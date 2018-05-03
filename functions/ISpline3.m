function v = ISpline3(x,y,u)
%Entries
%   x,y: columns vectors from nodes
%   u: columns vectores among xmin and xmax
%Saida:
%   v: Image from elements of u through in spline

C = CoefSpline3(x,y);

n=length(x);
r=length(u);
v=ones(r,1);
for i=1:r
    %Determines the among
    k=1;
    while u(i) > x(k+1) && k < (n-1)
        k=k+1;
    end
    %Derterminas the ordenate
    t=u(i)-x(k);
    v(i)=((C(k,1)*t+C(k,2))*t+C(k,3))*t+C(k,4);
end