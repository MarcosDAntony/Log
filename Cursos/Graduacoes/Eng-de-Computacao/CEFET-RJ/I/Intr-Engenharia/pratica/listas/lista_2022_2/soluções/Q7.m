clearvars; clc; close all;

a = 2;
b = 2;
c = 2;

L = sort([a,b,c],'descend');

if((a>(b-c))&&(a<(b+c)))
  n = length(unique(L)); % numero de lados desiguais
  if(n==3)
    disp('Triangulo escaleno');
  elseif(n==2)
    disp('Triangulo isosceles');
  elseif(n==1)
    disp('Triangulo equilatero');
  endif
else
    disp('Os lados fornecidos nao formam um triangulo');
endif


