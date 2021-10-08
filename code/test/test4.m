clc,clear 
load thetax1x2.mat
sptheta = roundn(double(sptheta),-4);
% syms  x1 x2  theta k m g F r
x1 = roundn(double(spx1),-4);
x2 = roundn(double(spx2),-4);
syms theta(t)
k = 500;
m = 5;
g = 9.8;
F = 50;
r = 0.3;
a = roundn(-8*g/(3*pi*r),-1);
b = roundn(2*k*(x1-x2)/(m*r),-1);
%%
eqn = diff(theta,t,2) == -a*sin(theta)+b*cos(theta)
%%
Dtheta = diff(theta,t);
cond = [theta(0)==sptheta,Dtheta(0)==0];
thetaSol(t) = dsolve(eqn,cond)
latex(simplify(thetaSol(t)))

t = 0:0.1:100;
mytheta = thetaSol(t);
plot(t,mytheta)
% syms y(t) a b
% eqn = diff(y,t,2) == a^2*y;
% Dy = diff(y,t);
% cond = [y(0)==b, Dy(0)==1];
% ySol(t) = dsolve(eqn,cond)