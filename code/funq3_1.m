function eqn = funq3_1(x)
load kmgFrlL.mat
x1 = x(1);
x2 = x(2);
theta = x(3);
theta1 = x(4);
theta2 = x(5);
eqn(1) = x2 * cos(theta2) - x1 * cos(theta1);
eqn(2) = k * x2 * sin(theta2) + k * x1 * sin(theta1) - m * g - F;
eqn(3) = k * x2 * cos(theta2) * sin(theta) + k * x1 * cos(theta1) * sin(theta) ...
    +k * x2 * sin(theta2) * cos(theta) + m * g * 4 * sin(theta) / (3 * pi) ...
    -F * cos(theta) - k * x1 * sin(theta1) * cos(theta);
eqn(4) = (l + x1) * cos(theta1) + (l + x2) * cos(theta2) + 2 * r * cos(theta) - L;
eqn(5) = (l + x1) * sin(theta1) + 2 * r * sin(theta) - (l + x2) * sin(theta2);
eqn(6) = L^2 + (l + x2)^2 - 2 * (l + x2) * L * cos(theta2) - 4 * r^2 - (l + x1)^2 - ...
    4 * (l + x1) * r * cos(theta1-theta);
eqn(7) = L^2 + (l + x1)^2 - 2 * (l + x1) * L * cos(theta1) - 4 * r^2 - (l + x2)^2 - ...
    4 * (l + x2) * r * cos(theta2+theta);