clc, clear
load theta_theta12_x1x2_q3.mat
theta_0 = theta_q3;
theta1_0 = theta1_q3;
theta2_0 = theta2_q3;
x1_0 = x1_q3;
x2_0 = x2_q3;
x0 = [theta_0 0 x1_0 x2_0 theta1_0 theta2_0];
load kmgFrlL.mat
theta = x0(1);
Phi = x0(2);
x1 = x0(3)
x2 = x0(4)
theta1 = x0(5)
theta2 = x0(6)
dy = zeros(6,1);
options = optimoptions('fsolve','Display','iter');
x1x2theta12 = fsolve(@funtest,[x1 x2 theta1 theta2],options)