%% 
clc
clear
close all
odefun = @(t,x)[-0.2*x(1)+x(2)*x(3)+0.3*x(1)*x(2);
                2*x(1)*x(2)-5*x(2)*x(3)-2*x(2)^2;
                x(1)+x(2)+x(3)-1]; %微分方程
M = [1 0 0;0 1 0;0 0 0]; % 质量矩阵
options=odeset('mass',M); % 定义mass属性
x0=[0.8;0.1;0.1];
[t,x]=ode15s(odefun,[0 10],x0,options);
figure
plot(t,x(:,1),t,x(:,2),t,x(:,3))
grid on
legend('x1','x2','x3')