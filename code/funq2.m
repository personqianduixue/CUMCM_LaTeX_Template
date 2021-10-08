function dtheta = funq2(t,theta)
load ab.mat
dtheta = zeros(2,1);
dtheta(1) = theta(2);
dtheta(2) = a*sin(theta(1))+b*sin(2*theta(1))/2;
end