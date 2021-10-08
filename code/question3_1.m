% clc,clear
options = optimoptions('fsolve','Display','none','PlotFcn',@optimplotfirstorderopt);
% options = optimoptions('fsolve','Display','iter');
x0 = [0 0 0 pi/2 pi/2];
% x0 = [0 0 0 0 0];
xq3 = fsolve(@funq3_1,x0,options);
x1_q3 = xq3(1)
x2_q3 = xq3(2)
theta_q3 = xq3(3)
theta1_q3 = xq3(4)
theta2_q3 = xq3(5)
save theta_theta12_x1x2_q3.mat theta_q3 theta1_q3 theta2_q3 x1_q3 x2_q3

