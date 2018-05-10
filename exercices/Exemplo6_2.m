clear
clc
x = [0.5 2.8 4.2 6.7 8.3]';
y = [4.4 1.8 1.0 0.4 0.2]';
[B1,Y1,Sqe1]=AjustePol(x,y,1);
[B2,Y2,Sqe2]=AjustePol(x,y,2);
[B3,Y3,Sqe3]=AjustePol(x,y,3);
[B4,Y4,Sqe4]=AjustePol(x,y,4);
%Graficos
plot(x,y,'or')
hold on
%sobreposicao de graficos
t=0:0.01:9;
y1=VPol(B1,t);
y2=VPol(B2,t);
y3=VPol(B3,t);
y4=VPol(B4,t);
plot(t,y1,'b',t,y2,'g',t,y3,'k',t,y4,'m');
%hold off
[a,b,Sqe]=AjusteExponencial(x,y);
f=@(x) a*exp(b*x);
plot(t, f(t),'k');
hold off