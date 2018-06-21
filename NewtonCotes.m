function x = NewtonCotes(f, a, b, ordem)
W = [1 0 0 0 0; 
    1/2 1/2 0 0 0; 
    1/6 4/6 1/6 0 0; 
    1/8 3/8 3/8 1/8 0;
    7/90 32/90 12/90 32/90 7/90];
h = (b-a)/ordem;
y = zeros(1,5);
n = a:h:b;
n = f(n);
for i = 1:length(n)
    y(i) = n(i);
end
Y = W*y';
x = (b-a)*Y(ordem+1);