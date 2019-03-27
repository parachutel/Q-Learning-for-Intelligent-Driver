clear;

# Change to the policy (Q-table) name to be evaluated (.csv):
policy_file_name = 'Q_alpha_0.2_episode_10000_w2_10_w5_0.1_epsilon_0.1.csv'

cd Parameters
%%%%%%% Read Policy_1 from a Q file:
Q = csvread(policy_file_name);
[~, Policy_1] = max(Q,[],2);
%%%%%%% OR read Policy_1 from a policy file:
% Policy_1 = csvread(policy_file_name);
% Policy_1 = Policy_1(:);
cd ..

plot_flag     = true;
if_saving_gif = true;


simu_times       = 100;
simulate_horizon = 100;
min_car_num      = 32;
max_car_num      = 32;


[colli_rate, performance] =  ...
    evaluate_policy(Policy_1, plot_flag, if_saving_gif, ...
                    simu_times, simulate_horizon, min_car_num, max_car_num);

fprintf('\nCollision rate = %3.2f %% \n', colli_rate*100);
fprintf('Performance    = %3.2f \n', performance);
