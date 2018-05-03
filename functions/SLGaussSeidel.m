function [x,Erel,k] = SLGaussSeidel(A,b,tol,kmax)
%Entrada
%A: Matriz
%b
%tol
%kmax
%Saida
%x
%erel
%k

[n,~] = size(A);
C = zeros(n);
d = zeros(n,1);
for i=1:n
    for j=1:n
        if i~=j
            C(i,j) = -A(i,j)/A(i,i);
        end
    end
    d(i) = b(i)/A(i,i);
end

k = 1;
x = ones(n, 1);
Erel = +inf;
while(k < kmax && Erel > tol)
    k = k + 1;
    u  = x;
    for i = 1:n
        x(i) = C(i,:)*x + d(i);
    end
    Erel = ErroRelVet(u,x);
end
        