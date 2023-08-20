import socket
import time
import torch
import numpy as np
import setproctitle
import nni
from amb.algorithms import ALGO_REGISTRY
from amb.envs import LOGGER_REGISTRY
from amb.utils.trans_utils import _t2n
from amb.utils.env_utils import (
    make_eval_env,
    make_train_env,
    make_render_env,
    set_seed,
    get_num_agents,
)
from amb.utils.model_utils import init_device
from amb.utils.config_utils import init_dir, save_config, get_task_name


class BaseRunner:
    def __init__(self, args, algo_args, env_args):
        """Initialize the single/BaseRunner class.
        Args:
            args: command-line arguments parsed by argparse. Three keys: algo, env, exp_name.
            algo_args: arguments related to algo, loaded from config file and updated with unparsed command-line arguments.
            env_args: arguments related to env, loaded from config file and updated with unparsed command-line arguments.
        """
        self.args = args
        self.algo_args = algo_args
        self.env_args = env_args

        self.rnn_hidden_size = algo_args["model"]["hidden_sizes"][-1]
        self.recurrent_n = algo_args["model"]["recurrent_n"]
        
        self.episode_length = algo_args["train"]["episode_length"]
        self.n_rollout_threads = algo_args["train"]["n_rollout_threads"]
        self.n_eval_rollout_threads = algo_args['eval']['n_eval_rollout_threads']

        self.share_param = algo_args["algo"]['share_param']

        set_seed(algo_args["seed"])
        self.device = init_device(algo_args["device"])
        self.task_name = get_task_name(args["env"], env_args)
        if not self.algo_args['render']['use_render']:
            self.run_dir, self.log_dir, self.save_dir, self.writter = init_dir(
                args["env"],
                env_args,
                args["algo"],
                args["exp_name"],
                args["run"],
                algo_args["seed"]["seed"],
                logger_path=algo_args["logger"]["log_dir"],
            )
            save_config(args, algo_args, env_args, self.run_dir)
            # init wandb and save config
            if algo_args["logger"]["use_wandb"]:
                import wandb

                wandb.init(
                    project=args["exp_name"],
                    name=args["env"]
                    + "_"
                    + get_task_name(args["env"], env_args)
                    + "_"
                    + args["run"]
                    + "_"
                    + args["algo"]
                    + "_seed-"
                    + str(algo_args["seed"]["seed"])
                    + "_"
                    + time.strftime('%Y-%m-%d-%H-%M-%S', time.localtime()),
                    config={
                        "args": args,
                        "algo_args": algo_args,
                        "env_args": env_args,
                    },
                    notes=socket.gethostname(),
                    entity="adv_marl_benchmark",
                    dir=self.run_dir,
                    job_type="training",
                )
        setproctitle.setproctitle(
            str(args["algo"]) + "-" + str(args["env"]) + "-" + str(args["exp_name"])
        )

        # set the config of env
        if self.algo_args['render']['use_render']:  # make envs for rendering
            (
                self.envs,
                self.manual_render,
                self.manual_delay,
                self.env_num,
            ) = make_render_env(args["env"], algo_args["seed"]["seed"], env_args)
        else:  # make envs for training and evaluation
            self.envs = make_train_env(
                args["env"],
                algo_args["seed"]["seed"],
                algo_args["train"]["n_rollout_threads"],
                env_args,
            )
            self.eval_envs = (
                make_eval_env(
                    args["env"],
                    algo_args["seed"]["seed"],
                    algo_args["eval"]["n_eval_rollout_threads"],
                    env_args,
                )
                if algo_args["eval"]["use_eval"]
                else None
            )
        self.num_agents = get_num_agents(args["env"], env_args, self.envs)
        self.action_type = self.envs.action_space[0].__class__.__name__

        print("share_observation_space: ", self.envs.share_observation_space)
        print("observation_space: ", self.envs.observation_space)
        print("action_space: ", self.envs.action_space, self.action_type)

        if self.algo_args['render']['use_render'] is False:
            self.logger = LOGGER_REGISTRY[args["env"]](
                args, algo_args, env_args, self.num_agents, self.writter, self.run_dir
            )

        # algorithm
        if self.share_param:
            for agent_id in range(1, self.num_agents):
                assert (
                    self.envs.observation_space[agent_id] == self.envs.observation_space[0]
                ), "Agents have heterogeneous observation spaces, parameter sharing is not valid."
                assert (
                    self.envs.action_space[agent_id] == self.envs.action_space[0]
                ), "Agents have heterogeneous action spaces, parameter sharing is not valid."

        self.algo = ALGO_REGISTRY[args["algo"]](
            {**algo_args["model"], **algo_args["algo"], **algo_args["train"]},
            self.num_agents,
            self.envs.observation_space,
            self.envs.share_observation_space[0],
            self.envs.action_space,
            device=self.device,
        )

        self.agents = self.algo.agents
        self.critic = self.algo.critic

        if self.algo_args['train']['model_dir'] is not None:  # restore model
            print("Restore model from", self.algo_args['train']['model_dir'])
            self.restore()

    def run(self):
        raise NotImplementedError

    @torch.no_grad()
    def eval(self):
        """Evaluate the model. All algorithms should fit this evaluation pipeline."""
        self.algo.prep_rollout()

        self.logger.eval_init(self.n_eval_rollout_threads)  # logger callback at the beginning of evaluation
        eval_episode = 0

        eval_obs, eval_share_obs, eval_available_actions = self.eval_envs.reset()

        eval_rnn_states = np.zeros((self.n_eval_rollout_threads, self.num_agents, self.recurrent_n, self.rnn_hidden_size), dtype=np.float32)
        eval_masks = np.ones((self.n_eval_rollout_threads, self.num_agents, 1), dtype=np.float32)

        while True:
            eval_actions_collector = []
            for agent_id in range(self.num_agents):
                eval_actions, temp_rnn_state = self.agents[agent_id].perform(
                    eval_obs[:, agent_id],
                    eval_rnn_states[:, agent_id],
                    eval_masks[:, agent_id],
                    eval_available_actions[:, agent_id]
                    if eval_available_actions[0] is not None else None,
                    deterministic=True,
                )
                eval_rnn_states[:, agent_id] = _t2n(temp_rnn_state)
                eval_actions_collector.append(_t2n(eval_actions))

            eval_actions = np.array(eval_actions_collector).transpose(1, 0, 2)

            eval_obs, eval_share_obs, eval_rewards, eval_dones, eval_infos, eval_available_actions = self.eval_envs.step(eval_actions)

            eval_data = (eval_obs, eval_share_obs, eval_rewards, eval_dones, eval_infos, eval_available_actions)
            self.logger.eval_per_step(eval_data)  # logger callback at each step of evaluation
            # nni report
            nni.report_intermediate_result(eval_rewards)

            eval_dones_env = np.all(eval_dones, axis=1)

            eval_rnn_states[eval_dones_env == True] = 0

            eval_masks = np.ones((self.n_eval_rollout_threads, self.num_agents, 1), dtype=np.float32)
            eval_masks[eval_dones_env == True] = 0

            for eval_i in range(self.n_eval_rollout_threads):
                if eval_dones_env[eval_i]:
                    eval_episode += 1
                    self.logger.eval_thread_done(eval_i)  # logger callback when an episode is done

            if eval_episode >= self.algo_args["eval"]["eval_episodes"]:
                self.logger.eval_log(eval_episode)  # logger callback at the end of evaluation
                break

    @torch.no_grad()
    def render(self):
        """Render the model"""
        print("start rendering")

        eval_rnn_states = np.zeros((self.env_num, self.num_agents, self.recurrent_n, self.rnn_hidden_size), dtype=np.float32)
        eval_masks = np.ones((self.env_num, self.num_agents, 1), dtype=np.float32)

        for _ in range(self.algo_args['render']['render_episodes']):
            eval_obs, _, eval_available_actions = self.envs.reset()
            rewards = 0
            while True:
                eval_obs = np.expand_dims(np.array(eval_obs), axis=0)
                if eval_available_actions is not None:
                    eval_available_actions = np.expand_dims(np.array(eval_available_actions), axis=0)
                    
                eval_actions_collector = []
                for agent_id in range(self.num_agents):
                    eval_actions, temp_rnn_state = self.agents[agent_id].perform(
                        eval_obs[:, agent_id],
                        eval_rnn_states[:, agent_id],
                        eval_masks[:, agent_id],
                        eval_available_actions[:, agent_id]
                        if eval_available_actions is not None else None,
                        deterministic=True,
                    )
                    eval_rnn_states[:, agent_id] = _t2n(temp_rnn_state)
                    eval_actions_collector.append(_t2n(eval_actions))
                eval_actions = np.array(eval_actions_collector).transpose(1, 0, 2)

                eval_obs, _, eval_rewards, eval_dones, _, eval_available_actions = self.envs.step(eval_actions[0])
                rewards += eval_rewards[0][0]
                if self.manual_render:
                    self.envs.render()
                if self.manual_delay:
                    time.sleep(0.1)
                if eval_dones[0]:
                    print(f'total reward of this episode: {rewards}')
                    break
                
        if "smac" in self.args["env"]:  # replay for smac, no rendering
            if "v2" in self.args["env"]:
                self.envs.env.save_replay()
            else:
                self.envs.save_replay()

    def restore(self):
        """Restore the model"""
        self.algo.restore(str(self.algo_args['train']['model_dir']))

    def save(self):
        """Save the model"""
        self.algo.save(str(self.save_dir))

    def close(self):
        """Close environment, writter, and log file."""
        if self.algo_args['render']['use_render']:
            self.envs.close()
        else:
            self.envs.close()
            if self.algo_args["eval"]["use_eval"] and self.eval_envs is not self.envs:
                self.eval_envs.close()
            self.writter.export_scalars_to_json(str(self.log_dir + "/summary.json"))
            self.writter.close()
            self.logger.close()