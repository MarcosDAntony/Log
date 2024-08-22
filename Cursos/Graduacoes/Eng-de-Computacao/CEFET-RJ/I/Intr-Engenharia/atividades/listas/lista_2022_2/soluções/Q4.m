clearvars; clc; close all;

for i=1:5
  N(i) = input(strcat('Digite o valor n.(',num2str(i),'):'));
endfor

% exibe os valores maiores que a media
disp(N(find(N>mean(N))));
