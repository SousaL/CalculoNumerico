clc
clear

H = 60;
L = 90;
f=@(x) H*(1*-4*x.^2/(L^2));

syms t
df = matlabFunction(diff(f(t)));
g=@(x) sqrt(1+df(x).^2);

a=-L/2
b=L/2
m=200
ordem=4
[x] = NewtonCotesComposto(g, a, b,m, ordem)