clearvars; clc; close all;

% coeficientes de p1 (linha 1) e p2 (linha 2)
p = [0  1  0  -7  -6;
     1 -6 -7 -48 -36]

for i=1:2
 % calcula as raizes de p1 e p2
 roots(p(i,:))'
endfor

% vetor fornecido pelo usuario
x0 = [-2 -1 0 1 3]

for i=1:2
  % function handle para calcular o valor de p1(x0) e p2(x0)
  _p{i}= @(x)(p(i,1)*x.^4+p(i,2)*x.^3+p(i,3)*x.^2+p(i,4)*x + p(i,5));
  % calcula e exibe os valores de p1(x0) e p2(x0)
  disp(_p{i}(x0));
endfor





