function eqn = funtest(x,theta)
load kmgFrlL.mat
x1 = x(1);
x2 = x(2);
theta1 = x(3);
theta2 = x(4);
eqn(1) = -(l + x1) * cos(theta1) - (l + x2) * cos(theta2) - 2 * r * cos(theta) + L;
eqn(2) = -(l + x1) * sin(theta1) - 2 * r * sin(theta) + (l + x2) * sin(theta2);
eqn(3) = L^2 + (l + x2)^2 - 2 * (l + x2) * L * cos(theta2) - 4 * r^2 - (l + x1)^2 - ...
    4 * (l + x1) * r * cos(theta1-theta);
eqn(4) = L^2 + (l + x1)^2 - 2 * (l + x1) * L * cos(theta1) - 4 * r^2 - (l + x2)^2 - ...
    4 * (l + x2) * r * cos(theta2+theta);