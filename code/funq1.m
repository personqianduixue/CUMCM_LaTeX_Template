function eqn = funq1(x)
load kmgFrlL.mat
x1 = x(1);
x2 = x(2);
theta = x(3);
eqn(1) = k * x2 * r * cos(theta) + m * g * 4 * r * sin(theta) / (3 * pi) ...
    -k * x1 * r * cos(theta) - F * r * cos(theta);
eqn(2) = sin(theta) - (x2 - x1) / (2 * r);
eqn(3) = k * x1 + k * x2 - F - m * g;