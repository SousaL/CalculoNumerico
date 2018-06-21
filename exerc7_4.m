clear
clc
f=@(x) (x+1).^2.*(x-1).^2;
a = -1;
b = 1;


[x1] = NewtonCotesComposto(f, a, b, 1000, 1)
[x2] = NewtonCotesComposto(f, a, b, 1000, 2)
[x3] = NewtonCotesComposto(f, a, b, 1000, 3)
[x4] = NewtonCotesComposto(f, a, b, 1000, 4)

x=-1:0.01:1;
y=f(x)';
[Q] = QuadSpline3(x,y)