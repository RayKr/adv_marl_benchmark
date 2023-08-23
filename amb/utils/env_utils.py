import os
import random
import numpy as np
import torch
from amb.envs.env_wrappers import ShareSubprocVecEnv, ShareDummyVecEnv, ShareSubprocVecDualEnv, ShareDummyVecDualEnv


def check(value):
    """Check if value is a numpy array, if so, convert it to a torch tensor."""
    output = torch.from_numpy(value) if isinstance(value, np.ndarray) else value
    return output


def get_shape_from_obs_space(obs_space):
    """Get shape from observation space.
    Args:
        obs_space: (gym.spaces or list) observation space
    Returns:
        obs_shape: (tuple) observation shape
    """
    if obs_space.__class__.__name__ == "Box":
        obs_shape = obs_space.shape
    elif obs_space.__class__.__name__ == "list":
        obs_shape = obs_space
    else:
        raise NotImplementedError
    return obs_shape


def get_shape_from_act_space(act_space):
    """Get shape from action space.
    Args:
        act_space: (gym.spaces) action space
    Returns:
        act_shape: (tuple) action shape
    """
    if act_space.__class__.__name__ == "Discrete":
        act_shape = 1
    elif act_space.__class__.__name__ == "Box":
        act_shape = act_space.shape[0]
    return act_shape

def get_onehot_shape_from_act_space(act_space):
    """Get shape from action space.
    Args:
        act_space: (gym.spaces) action space
    Returns:
        act_shape: (tuple) action shape
    """
    if act_space.__class__.__name__ == "Discrete":
        act_shape = act_space.n
    elif act_space.__class__.__name__ == "Box":
        act_shape = act_space.shape[0]
    return act_shape

def make_train_env(env_name, seed, n_threads, env_args):
    """Make env for training."""
    def get_env_fn(rank):
        def init_env():
            if env_name == "smac":
                from amb.envs.smac.StarCraft2_Env import StarCraft2Env

                env = StarCraft2Env(env_args)
            elif env_name == "smac_dual":
                from amb.envs.smac.StarCraft2Dual_Env import StarCraft2DualEnv

                env = StarCraft2DualEnv(env_args)
            elif env_name == "smacv2":
                from amb.envs.smacv2.smacv2_env import SMACv2Env

                env = SMACv2Env(env_args)
            elif env_name == "mamujoco":
                from amb.envs.mamujoco.multiagent_mujoco.mujoco_multi import (
                    MujocoMulti,
                )

                env = MujocoMulti(env_args=env_args)
            elif env_name == "pettingzoo_mpe":
                from amb.envs.pettingzoo_mpe.pettingzoo_mpe_env import (
                    PettingZooMPEEnv,
                )

                assert env_args["scenario"] in [
                    "simple_v2",
                    "simple_spread_v2",
                    "simple_reference_v2",
                    "simple_speaker_listener_v3",
                ], "only cooperative scenarios in MPE are supported"
                env = PettingZooMPEEnv(env_args)
            elif env_name == "gym":
                from amb.envs.gym.gym_env import GYMEnv

                env = GYMEnv(env_args)
            elif env_name == "football":
                from amb.envs.football.football_env import FootballEnv

                env = FootballEnv(env_args)
            elif env_name == "toy":
                from amb.envs.toy_example.toy_example import ToyExample

                env = ToyExample(env_args)
            else:
                print("Can not support the " + env_name + "environment.")
                raise NotImplementedError
            env.seed(seed + rank * 1000)
            return env

        return init_env

    if env_name == "smac_dual":
        if n_threads == 1:
            return ShareDummyVecDualEnv([get_env_fn(0)])
        else:
            return ShareSubprocVecDualEnv([get_env_fn(i) for i in range(n_threads)])
    else:
        if n_threads == 1:
            return ShareDummyVecEnv([get_env_fn(0)])
        else:
            return ShareSubprocVecEnv([get_env_fn(i) for i in range(n_threads)])


def make_eval_env(env_name, seed, n_threads, env_args):
    """Make env for evaluation."""
    def get_env_fn(rank):
        def init_env():
            if env_name == "smac":
                from amb.envs.smac.StarCraft2_Env import StarCraft2Env

                env = StarCraft2Env(env_args)
            elif env_name == "smac_dual":
                from amb.envs.smac.StarCraft2Dual_Env import StarCraft2DualEnv

                env = StarCraft2DualEnv(env_args)
            elif env_name == "smacv2":
                from amb.envs.smacv2.smacv2_env import SMACv2Env

                env = SMACv2Env(env_args)
            elif env_name == "mamujoco":
                from amb.envs.mamujoco.multiagent_mujoco.mujoco_multi import (
                    MujocoMulti,
                )

                env = MujocoMulti(env_args=env_args)
            elif env_name == "pettingzoo_mpe":
                from amb.envs.pettingzoo_mpe.pettingzoo_mpe_env import (
                    PettingZooMPEEnv,
                )

                env = PettingZooMPEEnv(env_args)
            elif env_name == "gym":
                from amb.envs.gym.gym_env import GYMEnv

                env = GYMEnv(env_args)
            elif env_name == "football":
                from amb.envs.football.football_env import FootballEnv

                env = FootballEnv(env_args)
            elif env_name == "toy":
                from amb.envs.toy_example.toy_example import ToyExample

                env = ToyExample(env_args)
            else:
                print("Can not support the " + env_name + "environment.")
                raise NotImplementedError
            env.seed(seed * 50000 + rank * 10000)
            return env

        return init_env

    if env_name == "smac_dual":
        if n_threads == 1:
            return ShareDummyVecDualEnv([get_env_fn(0)])
        else:
            return ShareSubprocVecDualEnv([get_env_fn(i) for i in range(n_threads)])
    else:
        if n_threads == 1:
            return ShareDummyVecEnv([get_env_fn(0)])
        else:
            return ShareSubprocVecEnv([get_env_fn(i) for i in range(n_threads)])


def make_render_env(env_name, seed, env_args):
    """Make env for rendering."""
    manual_render = True  # manually call the render() function
    manual_delay = True  # manually delay the rendering by time.sleep()
    env_num = 1  # number of parallel envs
    if env_name == "smac":
        from amb.envs.smac.StarCraft2_Env import StarCraft2Env

        env = StarCraft2Env(args=env_args)
        manual_render = False  # smac does not support manually calling the render() function
                               # instead, it use save_replay()
        manual_delay = False
    elif env_name == "smac_dual":
        from amb.envs.smac.StarCraft2Dual_Env import StarCraft2DualEnv

        env = StarCraft2DualEnv(env_args)
        manual_render = False  # smac does not support manually calling the render() function
                               # instead, it use save_replay()
        manual_delay = False
    elif env_name == "smacv2":
        from amb.envs.smacv2.smacv2_env import SMACv2Env

        env = SMACv2Env(args=env_args)
        manual_render = False
        manual_delay = False
    elif env_name == "mamujoco":
        from amb.envs.mamujoco.multiagent_mujoco.mujoco_multi import MujocoMulti

        env = MujocoMulti(env_args=env_args)
    elif env_name == "pettingzoo_mpe":
        from amb.envs.pettingzoo_mpe.pettingzoo_mpe_env import PettingZooMPEEnv

        env = PettingZooMPEEnv({**env_args, "render_mode": "human"})
    elif env_name == "gym":
        from amb.envs.gym.gym_env import GYMEnv

        env = GYMEnv(env_args)
    elif env_name == "football":
        from amb.envs.football.football_env import FootballEnv

        env = FootballEnv(env_args)
        manual_render = False  # football renders automatically
    elif env_name == "toy":
        from amb.envs.toy_example.toy_example import ToyExample

        env = ToyExample(env_args)
        manual_render = False
        manual_delay = False
    else:
        print("Can not support the " + env_name + "environment.")
        raise NotImplementedError
    env.seed(seed * 60000)
    return env, manual_render, manual_delay, env_num


def set_seed(args):
    """Seed the program."""
    if not args["seed_specify"]:
        args["seed"] = np.random.randint(1000, 10000)
    random.seed(args["seed"])
    np.random.seed(args["seed"])
    os.environ["PYTHONHASHSEED"] = str(args["seed"])
    torch.manual_seed(args["seed"])
    torch.cuda.manual_seed(args["seed"])
    torch.cuda.manual_seed_all(args["seed"])

