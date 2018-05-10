%Atencao arrumar funcao
%b=B0+B1logm
m=[44 61 81 113 131]';
p=[91 98 103 110 112]';
X=[m.^0 log(m)]; %matriz de planejamento
A=X'*X;
b=X'*p;
B=SLGauss(A,b);%b)B0=B(1) e B1=B(2)
p=@(m)B(1)+(B(2)*log(m));
m=100;
p(m)