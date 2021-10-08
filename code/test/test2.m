syms ro1 m1 s1 ro0 m0 s0 p1 p0 r
y1=sym('ro1*m1*s1=ro0*m0*s0');
y2=sym('ro1*m1^2*s1+p1*s1=ro0*m0^2*s0+p0*s0');
y3=sym('2*r*p1/((r-1)*ro1)+m1^2=2*r*p0/((r-1)*ro0)+m0^2');
[m0,m1,ro1]=solve(y1,y2,y3,m0,m1,ro1);
pretty(m0(1))%%m0可能为两个结果，所以我们要分两次去把m0的结果规范化，使人比较容易懂的那种。
pretty(m0(2))
pretty(m1(1))
pretty(m1(2))
pretty(ro1)%%经过solve函数得出的ro1值，可以知道，ro1的结果只有一个。
