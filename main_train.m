clear;

% Do not change:
MAX_STATES_NUM = 3^6 * 2;
ACTION_NUM = 6;

% If train from a existing policy, uncomment the following three lines:
% cd Parameters/
% Q_0 = csvread('Q_alpha_0.2_episode_5000_w2_10_w5_0.1.csv');
% cd ..

% If train from sctrach (otherwise, comment the line below): 
Q_0 = zeros(MAX_STATES_NUM, ACTION_NUM);

% Setting parameters:
setting_str = 'alpha_0.2_episode_10000_w5_0.1_epsilon_decay_v2'; # experiment name
episode_limit = 10000;
time_limit    = 10*3600; % in [seconds]
plot_flag     = false;   % usually not plot simulation animation during training
epsilon       = 0.1;     % eps-greedy
if_eps_decay  = true;    % if anneal epsilon
decay_rate    = 5;       % greater decay_rate, faster eps decays
gamma         = 0.9;     % discount factor
alpha         = 0.2;     % learning rate

% train
train_Q(Q_0, setting_str, episode_limit, time_limit, plot_flag,...
        epsilon, if_eps_decay, decay_rate, gamma, alpha);
