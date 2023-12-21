python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/default/seed-00001-2023-12-15-00-18-05 --exp_name random_noise_default --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/default/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/activation_func_leaky_relu/seed-00001-2023-12-15-16-47-31 --exp_name random_noise_activation_func_leaky_relu --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/activation_func_leaky_relu/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/activation_func_selu/seed-00001-2023-12-15-17-37-49 --exp_name random_noise_activation_func_selu --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/activation_func_selu/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/activation_func_sigmoid/seed-00001-2023-12-15-18-28-08 --exp_name random_noise_activation_func_sigmoid --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/activation_func_sigmoid/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/activation_func_tanh/seed-00001-2023-12-15-19-18-18 --exp_name random_noise_activation_func_tanh --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/activation_func_tanh/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/critic_lr_0.005/seed-00001-2023-12-15-08-28-03 --exp_name random_noise_critic_lr_0.005 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/critic_lr_0.005/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/critic_lr_0.005/seed-00001-2023-12-16-06-42-47 --exp_name random_noise_critic_lr_0.005 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/critic_lr_0.005/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/critic_lr_5e-05/seed-00001-2023-12-16-04-08-24 --exp_name random_noise_critic_lr_5e-05 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/critic_lr_5e-05/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/critic_lr_5e-05/seed-00001-2023-12-15-08-02-43 --exp_name random_noise_critic_lr_5e-05 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/critic_lr_5e-05/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_0.0001/seed-00001-2023-12-15-10-30-09 --exp_name random_noise_entropy_coef_0.0001 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_0.0001/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_0.001/seed-00001-2023-12-15-11-39-31 --exp_name random_noise_entropy_coef_0.001 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_0.001/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_0.1/seed-00001-2023-12-15-12-30-48 --exp_name random_noise_entropy_coef_0.1 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_0.1/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_0.5/seed-00001-2023-12-15-13-21-04 --exp_name random_noise_entropy_coef_0.5 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_0.5/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_1.0/seed-00001-2023-12-15-14-11-40 --exp_name random_noise_entropy_coef_1.0 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_1.0/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/gamma_0.95/seed-00001-2023-12-15-15-57-11 --exp_name random_noise_gamma_0.95 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/gamma_0.95/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/hidden_sizes_256_256/seed-00001-2023-12-17-13-47-56 --exp_name random_noise_hidden_sizes_256_256 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/hidden_sizes_256_256/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/hidden_sizes_64_64/seed-00001-2023-12-15-23-28-57 --exp_name random_noise_hidden_sizes_64_64 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/hidden_sizes_64_64/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/initialization_method_xavier_uniform_/seed-00001-2023-12-15-20-09-24 --exp_name random_noise_initialization_method_xavier_uniform_ --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/initialization_method_xavier_uniform_/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/lr_0.005/seed-00001-2023-12-16-00-08-36 --exp_name random_noise_lr_0.005 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/lr_0.005/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/lr_5e-05/seed-00001-2023-12-15-22-58-32 --exp_name random_noise_lr_5e-05 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/lr_5e-05/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/lr_5e-05/seed-00001-2023-12-17-13-50-09 --exp_name random_noise_lr_5e-05 --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/lr_5e-05/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/share_param_False/seed-00001-2023-12-16-09-19-44 --exp_name random_noise_share_param_False --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/share_param_False/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/share_param_False/seed-00001-2023-12-15-09-38-18 --exp_name random_noise_share_param_False --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/share_param_False/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/use_feature_normalization_False/seed-00001-2023-12-15-22-08-45 --exp_name random_noise_use_feature_normalization_False --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/use_feature_normalization_False/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/use_gae_False/seed-00001-2023-12-16-07-49-41 --exp_name random_noise_use_gae_False --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/use_gae_False/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/use_popart_False/seed-00001-2023-12-16-08-35-40 --exp_name random_noise_use_popart_False --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/use_popart_False/random_noise.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/use_recurrent_policy_True/seed-00001-2023-12-15-20-59-37 --exp_name random_noise_use_recurrent_policy_True --run perturbation --algo.num_env_steps 0 --algo.perturb_iters 0 --algo.adaptive_alpha False --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/use_recurrent_policy_True/random_noise.log 2>&1

python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/default/seed-00001-2023-12-15-00-18-05 --exp_name iterative_perturbation_default --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/default/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/activation_func_leaky_relu/seed-00001-2023-12-15-16-47-31 --exp_name iterative_perturbation_activation_func_leaky_relu --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/activation_func_leaky_relu/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/activation_func_selu/seed-00001-2023-12-15-17-37-49 --exp_name iterative_perturbation_activation_func_selu --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/activation_func_selu/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/activation_func_sigmoid/seed-00001-2023-12-15-18-28-08 --exp_name iterative_perturbation_activation_func_sigmoid --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/activation_func_sigmoid/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/activation_func_tanh/seed-00001-2023-12-15-19-18-18 --exp_name iterative_perturbation_activation_func_tanh --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/activation_func_tanh/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/critic_lr_0.005/seed-00001-2023-12-15-08-28-03 --exp_name iterative_perturbation_critic_lr_0.005 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/critic_lr_0.005/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/critic_lr_0.005/seed-00001-2023-12-16-06-42-47 --exp_name iterative_perturbation_critic_lr_0.005 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/critic_lr_0.005/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/critic_lr_5e-05/seed-00001-2023-12-16-04-08-24 --exp_name iterative_perturbation_critic_lr_5e-05 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/critic_lr_5e-05/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/critic_lr_5e-05/seed-00001-2023-12-15-08-02-43 --exp_name iterative_perturbation_critic_lr_5e-05 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/critic_lr_5e-05/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_0.0001/seed-00001-2023-12-15-10-30-09 --exp_name iterative_perturbation_entropy_coef_0.0001 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_0.0001/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_0.001/seed-00001-2023-12-15-11-39-31 --exp_name iterative_perturbation_entropy_coef_0.001 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_0.001/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_0.1/seed-00001-2023-12-15-12-30-48 --exp_name iterative_perturbation_entropy_coef_0.1 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_0.1/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_0.5/seed-00001-2023-12-15-13-21-04 --exp_name iterative_perturbation_entropy_coef_0.5 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_0.5/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_1.0/seed-00001-2023-12-15-14-11-40 --exp_name iterative_perturbation_entropy_coef_1.0 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_1.0/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/gamma_0.95/seed-00001-2023-12-15-15-57-11 --exp_name iterative_perturbation_gamma_0.95 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/gamma_0.95/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/hidden_sizes_256_256/seed-00001-2023-12-17-13-47-56 --exp_name iterative_perturbation_hidden_sizes_256_256 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/hidden_sizes_256_256/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/hidden_sizes_64_64/seed-00001-2023-12-15-23-28-57 --exp_name iterative_perturbation_hidden_sizes_64_64 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/hidden_sizes_64_64/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/initialization_method_xavier_uniform_/seed-00001-2023-12-15-20-09-24 --exp_name iterative_perturbation_initialization_method_xavier_uniform_ --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/initialization_method_xavier_uniform_/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/lr_0.005/seed-00001-2023-12-16-00-08-36 --exp_name iterative_perturbation_lr_0.005 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/lr_0.005/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/lr_5e-05/seed-00001-2023-12-15-22-58-32 --exp_name iterative_perturbation_lr_5e-05 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/lr_5e-05/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/lr_5e-05/seed-00001-2023-12-17-13-50-09 --exp_name iterative_perturbation_lr_5e-05 --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/lr_5e-05/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/share_param_False/seed-00001-2023-12-16-09-19-44 --exp_name iterative_perturbation_share_param_False --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/share_param_False/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/share_param_False/seed-00001-2023-12-15-09-38-18 --exp_name iterative_perturbation_share_param_False --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/share_param_False/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/use_feature_normalization_False/seed-00001-2023-12-15-22-08-45 --exp_name iterative_perturbation_use_feature_normalization_False --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/use_feature_normalization_False/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/use_gae_False/seed-00001-2023-12-16-07-49-41 --exp_name iterative_perturbation_use_gae_False --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/use_gae_False/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/use_popart_False/seed-00001-2023-12-16-08-35-40 --exp_name iterative_perturbation_use_popart_False --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/use_popart_False/iterative_perturbation.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/use_recurrent_policy_True/seed-00001-2023-12-15-20-59-37 --exp_name iterative_perturbation_use_recurrent_policy_True --run perturbation --algo.num_env_steps 0  --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack False > logs/mamujoco/HalfCheetah-6x1/mappo/use_recurrent_policy_True/iterative_perturbation.log 2>&1

python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/default/seed-00001-2023-12-15-00-18-05 --exp_name random_policy_default --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/default/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/activation_func_leaky_relu/seed-00001-2023-12-15-16-47-31 --exp_name random_policy_activation_func_leaky_relu --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/activation_func_leaky_relu/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/activation_func_selu/seed-00001-2023-12-15-17-37-49 --exp_name random_policy_activation_func_selu --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/activation_func_selu/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/activation_func_sigmoid/seed-00001-2023-12-15-18-28-08 --exp_name random_policy_activation_func_sigmoid --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/activation_func_sigmoid/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/activation_func_tanh/seed-00001-2023-12-15-19-18-18 --exp_name random_policy_activation_func_tanh --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/activation_func_tanh/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/critic_lr_0.005/seed-00001-2023-12-15-08-28-03 --exp_name random_policy_critic_lr_0.005 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/critic_lr_0.005/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/critic_lr_0.005/seed-00001-2023-12-16-06-42-47 --exp_name random_policy_critic_lr_0.005 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/critic_lr_0.005/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/critic_lr_5e-05/seed-00001-2023-12-16-04-08-24 --exp_name random_policy_critic_lr_5e-05 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/critic_lr_5e-05/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/critic_lr_5e-05/seed-00001-2023-12-15-08-02-43 --exp_name random_policy_critic_lr_5e-05 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/critic_lr_5e-05/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_0.0001/seed-00001-2023-12-15-10-30-09 --exp_name random_policy_entropy_coef_0.0001 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_0.0001/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_0.001/seed-00001-2023-12-15-11-39-31 --exp_name random_policy_entropy_coef_0.001 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_0.001/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_0.1/seed-00001-2023-12-15-12-30-48 --exp_name random_policy_entropy_coef_0.1 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_0.1/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_0.5/seed-00001-2023-12-15-13-21-04 --exp_name random_policy_entropy_coef_0.5 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_0.5/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/entropy_coef_1.0/seed-00001-2023-12-15-14-11-40 --exp_name random_policy_entropy_coef_1.0 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/entropy_coef_1.0/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/gamma_0.95/seed-00001-2023-12-15-15-57-11 --exp_name random_policy_gamma_0.95 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/gamma_0.95/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/hidden_sizes_256_256/seed-00001-2023-12-17-13-47-56 --exp_name random_policy_hidden_sizes_256_256 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/hidden_sizes_256_256/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/hidden_sizes_64_64/seed-00001-2023-12-15-23-28-57 --exp_name random_policy_hidden_sizes_64_64 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/hidden_sizes_64_64/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/initialization_method_xavier_uniform_/seed-00001-2023-12-15-20-09-24 --exp_name random_policy_initialization_method_xavier_uniform_ --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/initialization_method_xavier_uniform_/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/lr_0.005/seed-00001-2023-12-16-00-08-36 --exp_name random_policy_lr_0.005 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/lr_0.005/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/lr_5e-05/seed-00001-2023-12-15-22-58-32 --exp_name random_policy_lr_5e-05 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/lr_5e-05/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/lr_5e-05/seed-00001-2023-12-17-13-50-09 --exp_name random_policy_lr_5e-05 --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/lr_5e-05/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/share_param_False/seed-00001-2023-12-16-09-19-44 --exp_name random_policy_share_param_False --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/share_param_False/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/share_param_False/seed-00001-2023-12-15-09-38-18 --exp_name random_policy_share_param_False --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/share_param_False/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/use_feature_normalization_False/seed-00001-2023-12-15-22-08-45 --exp_name random_policy_use_feature_normalization_False --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/use_feature_normalization_False/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/use_gae_False/seed-00001-2023-12-16-07-49-41 --exp_name random_policy_use_gae_False --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/use_gae_False/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/use_popart_False/seed-00001-2023-12-16-08-35-40 --exp_name random_policy_use_popart_False --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/use_popart_False/random_policy.log 2>&1
python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/use_recurrent_policy_True/seed-00001-2023-12-15-20-59-37 --exp_name random_policy_use_recurrent_policy_True --run traitor --algo.num_env_steps 0 > logs/mamujoco/HalfCheetah-6x1/mappo/use_recurrent_policy_True/random_policy.log 2>&1

python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/default/seed-00001-2023-12-15-00-18-05 --exp_name traitor_default --run traitor --algo.num_env_steps 5000000 > logs/mamujoco/HalfCheetah-6x1/mappo/default/traitor.log 2>&1

python -u ../single_train.py --algo mappo --env mamujoco --env.scenario HalfCheetah --env.agent_conf 6x1 --algo.slice False --load_victim results/mamujoco/HalfCheetah-6x1/single/mappo/default/seed-00001-2023-12-15-00-18-05 --exp_name adaptive_action_default --run perturbation --algo.num_env_steps 5000000 --algo.perturb_iters 10 --algo.adaptive_alpha True --algo.targeted_attack True > logs/mamujoco/HalfCheetah-6x1/mappo/default/adaptive_action.log 2>&1


