clc,clear 
load theta_theta12_x1x2_q3.mat
theta_0 = theta_q3;
theta1_0 = theta1_q3;
theta2_0 = theta2_q3;
x1_0 = x1_q3;
x2_0 = x2_q3;
tspan = [0,5];
tt0 = [theta_0 0 x1_0 x2_0 theta1_0 theta2_0];
opts = odeset('RelTol',1e-2,'AbsTol',1e-4);
[t,theta] = ode45(@(t,theta) funq3_2_2(t,theta), tspan, tt0);
% plot(t,theta)
% legend('\theta','\theta^{\prime}','x1','x2','\theta_1','\theta_2')
figure('Position',[229.8,248.2,906.4,353.4])
line = plot(t,theta(:,1),'r-',t,theta(:,2),'b--');
legend('\theta','\theta^{\prime}')
xlabel('时间 t/s');ylabel('模型2角度\theta及角速度\theta^{\prime}');
title('模型2角度及角速度随时间的变化');
legend('\theta(t)','\theta^{\prime}(t)','location','northeast')
beautiplot('small')
set(line(1),'LineWidth',2)
set(line(2),'LineWidth',1.5)
exportgraphics(gcf,'img\模型2角度及角速度随时间的变化.png','Resolution',600)