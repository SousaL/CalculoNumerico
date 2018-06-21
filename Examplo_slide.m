clear
clc
x=(1.5:0.5:4.5)';
y=[80 72 64 53 44 31 22]';

[Q,z]=QuadSpline3(x,y)