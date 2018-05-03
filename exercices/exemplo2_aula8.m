% EXEMPLO 2 AULA 8

clear, clc,

A =[1 -0.25 -0.25 0 ;-0.25 1 0 -0.25;-0.25 0 1 -0.25;0 -0.25 0 1 ]
b =[0 0 0.25 -0.25]'

tol = 0.5e-8;
kmax = 200;
[x,ERel,k,] = Gauss_Jacobi(A,b,tol,kmax)

pause

[x,ERel,k] = Gauss_Seidel(A,b,tol,kmax)