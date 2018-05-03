function [x,ERel,k] = Bissecao(f,a,b,tol,kmax)
%BISSECAO - calcula uma aproximação para o zero da função f(x), no
%intervalo [a,b], previmente difinido. O intervalo deve conter somente UM
%zero da -  isolamento
ERel = inf;
xant = inf;
k = 0;
while ERel>=tol && k<kmax
    x = (a+b)/2;
    if f(a)*f(x)<0
        b = x;
    else
        a = x;
    end
k = k +1 ;
ERel = abs ((x - xant)/x);
xant = x;
end
end

