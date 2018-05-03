function [x, Erel, k,tab] = SLGaussJacobi(A,b,tol,kmax)
%com tabela [tab] function [x, Erel, k] = SLGaussJacobi(A,b,tol,kmax)
%Entrada:
%A: matriz dos coeficinetes
%b: vetor coluna dos termos independentes
%tol tolerancia para o erro
%kmax no maximo para interacoes

%Saida:
%x: aproximacao obtida
%Erel: erro vetorial cometido
%k: numero de iteracoes realizadas

[n,~] = size(A);
C=zeros(n);
d = zeros(n,1);

for i =1:n
    for j = 1:n
        if i~=j
            C(i,j)=-A(i,j)/A(i,i);
        end
    end
    d(i) = b(i)/A(i,i);
end
%Processo iterativo
k=1;
x=ones(n,1);
Erel=+inf;
tab=[k x' Erel];
while(k < kmax && Erel > tol)
    k = k+1;
    u = x;
    x = C*x+d;
    Erel = ErroRelVet(u,x);
    tab = [tab;k x' Erel];
end
