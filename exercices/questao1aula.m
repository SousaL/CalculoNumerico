clc, clear


A = [2 -1 1 -3;1 2 -3 1;3 -2 2 -1;5 0 0 3]
b = [14 1 6 -2]'

C = [A,b]


j = 1;

for i = 2:4
    
    C(i,:) = C(i,:) - C(i,j)/C(j,j)*C(j,:);
end
C


j = 2

for i = 3:4
    
    C(i,:) = C(i,:) - C(i,j)/C(j,j)*C(j,:);
    
end
C

j = 3
for i= 4:4
    C(i,:)  = C(i,:) - C(i,j)/C(j,j)*C(j,:);
end
C

