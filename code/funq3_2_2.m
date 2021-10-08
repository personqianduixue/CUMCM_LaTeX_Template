function dy = funq3_2_2(t,x)
load kmgFrlL.mat
theta = x(1);
Phi = x(2);
x1 = x(3);
x2 = x(4);
theta1 = x(5);
theta2 = x(6);
dy = zeros(6,1);
options=optimset('display','off');
x1x2theta12 = fsolve(@(x) funtest(x,theta),[x1 x2 theta1 theta2],options);
x1 = x1x2theta12(1);
x2 = x1x2theta12(2);
theta1 = x1x2theta12(3);
theta2 = x1x2theta12(4);
dy(1) = Phi;
dy(2) = -(2 / (m * r)) * (k * x2 * cos(theta2) * sin(theta) + k * x1 * cos(theta1) * sin(theta) + ...
    k * x2 * sin(theta2) * cos(theta) + m * g * 4 * sin(theta) / (3 * pi) - ...
    k * x1 * sin(theta1) * cos(theta));
