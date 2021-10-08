clc,clear
% options = optimoptions('fsolve','Display','none','PlotFcn',@optimplotfirstorderopt);
options = optimoptions('fsolve','Display','iter');
x0 = [0 0 0];
xq1 = fsolve(@funq1,x0,options);
x1_q1 = xq1(1)
x2_q1 = xq1(2)
theta_q1 = xq1(3)
save thetax1x2_q1.mat theta_q1 x1_q1 x2_q1