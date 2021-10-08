function daedi
a=-0.2; b=0.5; c=0.1; d=-1; e=0.3;
y0=[0.8;0.5;0.1]; %初值，y0(2)=0.5是猜测值
options=optimset('display','off');
y0(2)=fsolve(@(y2)y2-(c*y0(1)+d*y0(3)),y0(2),options); %求出相容的初值y0(2)
% 求解微分方程
[t,y]=ode45(@(t,y)myodefun(t,y,a,b,c,d,e),[0,20],y0); 
figure('numbertitle','off','name','DAE 求解示例 方法1.2')
plot(t,y)
legend('y1(t)','y2(t)','y3(t)')

function dy=myodefun(t,y,a,b,c,d,e)
dy=zeros(3,1); % dy(2)=0很重要，否则反求出y(2)后会被积分
% 先求解代数方程，顺序很重要
cons=@(y2)y2-(c*y(1)+d*y(3)); % 隐式代数约束
options=optimset('display','off'); % 关闭提示
y(2)=fsolve(cons,y(2),options); %用上次的y(2)作为猜测值
dy(1)=a*y(1)+b*y(2);
dy(3)=-e*y(2)*(y(3)-t)/y(1);
%%
clear,clc
y0=[0.8;-0.02;0.1]; %初值
a=-0.2; b=0.5; c=0.1; d=-1; e=0.3;
% 注意第二个方程要写成隐式形式
odefun=@(t,y)[a*y(1)+b*y(2)
y(2)-(c*y(1)+d*y(3))
-e*y(2)*(y(3)-t)/y(1)];
M=[1 0 0;0 0 0;0 0 1]; % 注意M(2,2)为零，从而化为代数方程
options=odeset('mass',M); % 设置质量矩阵
[t,y]=ode15s(odefun,[0,20],y0,options);
figure('numbertitle','off','name','DAE 求解示例 方法2.1')
plot(t,y)
legend('y1(t)','y2(t)','y3(t)')