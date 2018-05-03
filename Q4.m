%Questao da Prova 4
clc
clear
t=(176+250+20)/3
x=[1 2 3 4 5 7 8 10 11 12]';
y=[159 148 176 t 250 289 293 256 220 192]';
C=CoefSpline3(x,y)
v=ISpline3(x,y,9)