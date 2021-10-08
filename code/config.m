k = 500;%倔强系数
m = 5;%质量
g = 9.8;%重力加速度
F = 500;%外力
r = 0.3;%半径
l = 0.5;%原长
L = 0.6;%间距
save kmgFrlL.mat k m g F r l L
a = -8 * g / (3 * pi * r);
b = -4 * k / m;
save ab.mat a b