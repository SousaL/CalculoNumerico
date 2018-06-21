clear
clc
format short
a=0;
b=pi/2;
k=0.5;
f=@(x) 1./(sqrt(1-k^2*(sin(x)).^2));

m=6;
ordem=4;
[x, tab] = NewtonCotesComposto(f, a, b,m, ordem)

%61.573