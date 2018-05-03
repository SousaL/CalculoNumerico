clear
clc
A = [-20 0 9; -1 -5 1; 2 2 5];
b = [78 -5 8];
tol=0.5e-3;
kmax = 20;
t = SLGaussJacobi(A,b,tol,kmax);
t = [t; SLGaussSeidel(A,b,tol,kmax)]