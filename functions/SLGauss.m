function [ x ] = SLGauss( A,b )
%A matriz dos coeficientes
%b vetor COLUNA dos termos independentes
%x= coeficietes [x1 x2 ..... xn]
[n,~]=size(A);
C=[A b];
for j=1:n-1
    C=PivotamentoParcial(C,n,j);
    for i=j+1:n
        m=-C(i,j)/C(j,j);
        C(i,:)=C(i,:)+m*C(j,:);
    end
end
x=zeros(n,1);
for i=n:-1:1
    x(i)=(C(i,n+1)-C(i,1:n)*x)/C(i,i);

end
