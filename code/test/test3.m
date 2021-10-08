clc 
syms theta(t)
eqn = diff(theta,t,2) == -27.7*theta-62;
Dtheta = diff(theta,t);
cond = [theta(0)==0.1564,Dtheta(0)==0];
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