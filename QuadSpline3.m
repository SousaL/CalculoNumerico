function [Q,z] = QuadSpline3(x,y)
%Entrada
%nodos x, y
%Saida
%Q integral numerico da funcao

C=CoefSpline3(x,y);

n = length(x);

Q = 0;
z=zeros(1,n-1);
for k=1:n-1
    h=x(k+1)-x(k);
    z(k)=(((C(k,1)*h/4+C(k,2)/3)*h+C(k,3)/2)*h+C(k,4))*h;
    Q=Q+z(k);
end