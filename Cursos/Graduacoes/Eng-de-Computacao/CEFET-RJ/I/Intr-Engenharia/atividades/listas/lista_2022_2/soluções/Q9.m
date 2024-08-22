clearvars; clc; close all;

% P(x) = ax^5 + bx^4 +cx^3 + dx^2 +ex +f
% P = [a b c d e f]
P = [1 3 0 2 0 1];

R = roots(P);

for i=1:5
  disp(strcat('A raiz',{' '},num2str(i),' vale:',num2str(R(i))));
endfor

