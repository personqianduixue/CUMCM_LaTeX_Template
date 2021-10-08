x0 = [0; 0];
tspan = [0:0.1:1];
M = [1 0 ; 0 0];
options = odeset('Mass',M,'RelTol',1e-4,'AbsTol',[1e-6 1e-10 ]);
[t,x] = ode15s(@mult_syg7,tspan,x0,options)