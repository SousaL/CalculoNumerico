clear
clc
x = [0 1 4 6]';
y = [1 2.3 2.2 3.7]';
% m=3;
% X = MVander(x,m);
% p3 = gauss(X,y)
%Imagem=VPol(p3,5);
u=[2 3 5 6]';
[c,v] = IVander(x,y,u);
w = ILagrange(x,y,u)