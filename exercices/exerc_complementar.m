clear
clc

x=20:5:50;
y=[0.9991 0.9985 0.9983 0.9982 0.9983 0.9985 0.9989]';

u=[20.0 30.0 40.0 32.5];
format long
[c,v]=IVander(x,y,u);
%w = ILagrange(x,y,u);

t=15:0.01:55;

ft=VPol(c,t);

plot(x,y,'og',u,v,'*m',t,ft)
f=@(x) c(1)*x.^6+c(2)*x.^5+c(3)*x.^4+c(4)*x.^3+c(5)*x.^2+c(6)*x+c(7)-0.9984;
plot(t,f(t))
grid

x1=(20+25)/2;
x2=(40+45)/2;

tol = 0.5e-12;
kmax=20;
[x1,Erel,k]=ZeroNewton(f,x1,tol,kmax);
[x2,Erel,k]=ZeroNewton(f,x2,tol,kmax);
tab=[x1 x2]