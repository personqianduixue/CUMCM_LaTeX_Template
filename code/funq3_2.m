function eqn = funq3_2(t, x)
load kmgFrlL.mat
theta = x(1);
Phi = x(2);
x1 = x(3);
x2 = x(4);
theta1 = x(5);
theta2 = x(6);
eqn = zeros(6, 1);
eqn(1) = Phi;
eqn(2) = -(2 / (m * r)) * (k * x2 * cos(theta2) * sin(theta) + k * x1 * cos(theta1) * sin(theta) + ...
    k * x2 * sin(theta2) * cos(theta) + m * g * 4 * sin(theta) / (3 * pi) - ...
    k * x1 * sin(theta1) * cos(theta));
eqn(3) = -(l + x1) * cos(theta1) - (l + x2) * cos(theta2) - 2 * r * cos(theta) + L;
eqn(4) = -(l + x1) * sin(theta1) - 2 * r * sin(theta) + (l + x2) * sin(theta2);
eqn(5) = L^2 + (l + x2)^2 - 2 * (l + x2) * L * cos(theta2) - 4 * r^2 - (l + x1)^2 - ...
    4 * (l + x1) * r * cos(theta1-theta);
eqn(6) = L^2 + (l + x1)^2 - 2 * (l + x1) * L * cos(theta1) - 4 * r^2 - (l + x2)^2 - ...
    4 * (l + x2) * r * cos(theta2+theta);
