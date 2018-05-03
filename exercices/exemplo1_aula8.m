% resolução do exemplo 1 - aula 8

clear, clc,

A = [12 -1 -3;1 -9 -2;2 3 6]
b = [40 7 23]'

% 1) calcular a matriz C e o vetor d:
[n,~] = size(A);
C = zeros(n);
d = zeros(n,1);
for i = 1:n
    for j = 1:n
        if i~=j
            C(i,j) = -A(i,j)/A(i,i);
        end
    end
end
C
for i = 1:n
    d(i) = b(i)/A(i,i)
end
d

% 2) método iterativo de Gauss- Jacobi:
% escolher um vetor inicializador:
x1 = [-7 3 5]'
x2 = C*x1+d
x3 = C*x2+d
x4 = C*x3+d
x5 = C*x4+d
x6 = C*x5+d
x7 = C*x6+d
x8 = C*x7+d
x9 = C*x8+d
ERel = norm(x8-x7)/norm(x8)
Res = norm(A*x8-b)
ResRelativo = norm(A*x8-b)/norm(b)

tol = 0.5e-6
kmax = 20;
[x,ERel,k,] = Gauss_Jacobi(A,b,tol,kmax)

pause 

[x,ERel,k] = Gauss_Seidel(A,b,tol,kmax)

