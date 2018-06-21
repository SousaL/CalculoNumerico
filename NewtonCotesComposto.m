function [x, tab] = NewtonCotesComposto(f, a, b,m, ordem)
H = (b-a)/m;
x = 0;
a_tmp = a;
b_tmp = a + H;
tab = [];
for i =1:m
    r = NewtonCotes(f, a_tmp, b_tmp, ordem);
    tab = [tab; a_tmp b_tmp r];
    x = x + r;
    a_tmp = b_tmp;
    b_tmp = H + b_tmp;
end

