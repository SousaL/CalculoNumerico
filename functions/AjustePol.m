function [B, Y, Sqe] = AjustePol(x,y,m)
%Entries:
%x, y vetires colunas dos nodos
%m, grau do polinomio a ser ajustado
%Saida
%B, coeficientes do pol ajustado
%Y, imagem dos valores de B, pela matriz X de planejamento
%Sqe, soma quadratica dos erros (desvios)s
X=MVander(x,m);
A=X.'*X;
b=X.'*y;
B=SLGauss(A,b);
%Determinacao de residuo quadratico
Y=X*B;
Sqe=(norm(y-Y))^2;
