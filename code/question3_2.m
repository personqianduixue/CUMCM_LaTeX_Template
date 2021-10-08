clc, clear
load theta_theta12_x1x2_q3.mat
theta_0 = theta_q3;
theta1_0 = theta1_q3;
theta2_0 = theta2_q3;
x1_0 = x1_q3;
x2_0 = x2_q3;
M = zeros(6, 6);
M(1, 1) = 1;
M(2, 2) = 1;
options = odeset('mass', M,'RelTol',1e-2,'AbsTol',[1e-46 1e-4 1e-4 1e-4 1e-4 1e-4]);
% options = odeset('mass', M);
x0 = [theta_0 0 x1_0 x2_0 theta1_0 theta2_0];
tspan = [0 1];
[t,x] = ode23s(@funq3_2,tspan,x0,options);
figure
plot(t,x)
legend('\theta','\theta^{\prime}','x1','x2','\theta_1','\theta_2')