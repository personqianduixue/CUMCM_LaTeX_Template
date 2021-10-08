syms x y a b
s=solve(a*x+b*y==10,a*x-b*y==20,x,y);
sol_x = s.x
sol_y = s.y