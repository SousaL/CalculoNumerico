function [ C ] = PivotamentoParcial( C, n, j)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
p = abs(C(j,j));
k = j;
for i = j+1:n
    if (abs(C(i,j))) > p 
        p = abs(C(i,j));
        k = i;
    end
end
if p == 0
    disp ('erro: Pivotamento impossível');
return
end
if k > j 
    T = C(j,:);
    C(j,:) = C(k,:);
    C(k,:) = T;
end
end

