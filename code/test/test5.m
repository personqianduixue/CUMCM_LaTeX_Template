F = @(x) [2*x(1) - x(2) - exp(-x(1));
         -x(1) + 2*x(2) - exp(-x(2))];


x0 = [-5;-5];


options = optimoptions('fsolve','Display','iter');


[x,fval] = fsolve(F,x0,options)