function [x,ERel,k] = Gauss_Seidel(A,b,tol,kmax)
%GAUSS SEIDEL RESOLVE UM SISTEMA QUADRADO SPD PELO MÉTODO ITERATIVO DE
%GAUSS-SEIDEL, COM INICIALIZADOR X1 FORMADO POR ELEMENTOS UNITARIOS.
% USA COMO CRITÉRIO DE PARADA TOL PRA EREL E NUMERO MÁXIMO DE ITERAÇÕES.
% clear, clc,

%Entrada:
%A: matriz dos coeficinetes
%b: vetor coluna dos termos independentes
%tol tolerancia para o erro
%kmax no maximo para interacoes

%Saida:
%x: aproximacao obtida
%Erel: erro vetorial cometido
%k: numero de iteracoes realizadas

[n,~]= size(A);
% 1) calcular a matriz C e o vetor d:
C = zeros(n);
d = zeros(n,1);
for i = 1:n
    d(i) = b(i)/A(i,i)
    for j = 1:n
        if i~=j
            C(i,j) = -A(i,j)/A(i,i);
        end
    end
end

% 2) método iterativo de Gauss- Jacobi:
% escolher um vetor inicializador:
x = ones(n,1);
ERel = inf;
k = 1;
while ERel>= tol && k<kmax
    xant = x;
    for i = 1:n
        x(i) = C(i,:)*x + d(i);
    end
ERel = norm(x-xant)/norm(x);
k = k+1;
end
end

