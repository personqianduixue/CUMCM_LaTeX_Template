clc,clear 
load thetax1x2_q1.mat
theta_0 = roundn(double(theta_q1),-4);
tspan = [0,5];
tt0 = [theta_0,0];
opts = odeset('RelTol',1e-2,'AbsTol',1e-4);
[t,theta] = ode45(@(t,theta) funq2(t,theta), tspan, tt0);
figure('Position',[229.8,248.2,906.4,353.4])
plot(t,theta(:,1),'r-',t,theta(:,2),'b--')
xlabel('时间 t/s');ylabel('模型1角度\theta及角速度\theta^{\prime}');
title('模型1角度及角速度随时间的变化');
legend('\theta(t)','\theta^{\prime}(t)','location','northeast')
beautiplot('small')
% exportgraphics(gcf,'img\模型1角度及角速度随时间的变化.png','Resolution',600)
