function[a,b,Sqe]=AjusteExponencial(x,y)
%Entries:
%x, y vetires colunas dos nodos
%Saida
%a, coeficientes da funcao y = a*exp(b*x)
%b, imagem dos valores de B, pela matriz X de planejamento
%Sqe, soma quadratica dos erros (desvios)s
z=log(y);
[B]=AjustePol(x,z,1);
b=B(1);
c=B(2);
a=exp(c);
Y=a*exp(b*x);
Sqe=(norm(y-Y))^2;