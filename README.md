# Q-Learning-for-Intelligent-Driver by MATLAB
## This is a course project for AA228/CS238 in 2017 Fall at Stanford
We propose a driver modeling process and its evaluation results of an intelligent autonomous driving policy, which is obtained through reinforcement learning techniques. 
Assuming a MDP decision making model, Q-learning method and deep Q-learning method are applied to simple but descriptive state and action spaces, so that a policy is developed within limited computational load. 
The driver could perform reasonable maneuvers, like acceleration, deceleration or lane-changes, under usual traffic conditions on a multi-lane highway.
A traffic simulator is also construed to evaluate a given policy in terms of collision rate, average travelling speed, and lane change times. Results show the policy gets well trained under 
reasonable time periods, where the driver acts interactively in the stochastic traffic environment, demonstrating low collision rate and obtaining higher travelling speed than the average of the environment. 
Sample intelligent driver demonstration videos are posted on [YouTube](https://youtu.be/OFRZzvPH30g).
Project report is available at [here](https://github.com/parachutel/Q-Learning-for-Intelligent-Driver/blob/master/AA228%20-%20Training%20an%20Intelligent%20Driver%20on%20Highway%20Using%20Reinforcement%20Learning.pdf)

Usage: 

First create following subfolders in case the code needs them:
- ./Animation
- ./Evaluation
- ./Figures
- ./Parameters

Then
> run main_train.m for Q-learning and generating policies (change setting parameters for your needs)

After having a policy
> run main_evaluate.m for evaluating policies
