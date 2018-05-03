function y=VPol(c,x)

n=length(c);
y=0;
for i=1:n
    y=y.*x+c(i);
end
