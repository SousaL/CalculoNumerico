function v = ILagrange(x,y,u)
n = length(x);
m = length(u);
v = ones(m,1);

%Interpolacao
for k=1:m
    s=0;
    for i=1:n
        p = y(i);
        for j = 1:n
            if j ~= i
                p = p* (u(k) - x(j))/(x(i) - x(j));
            end
        end
        s=s+p
    end
    v(k)=s
end
    