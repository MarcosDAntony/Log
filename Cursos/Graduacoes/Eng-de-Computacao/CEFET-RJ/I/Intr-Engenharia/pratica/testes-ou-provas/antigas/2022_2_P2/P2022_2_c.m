clearvars; clc; close all;

a = 1; b = 2; c = -1;
A = (a*b)<(b-c);
B = (a-b)~=c;
C = ~A||B;

% Questão 1 - Qual o valor de A?
% Questão 2 - Qual o valor de B?
% Questão 3 - Qual o valor de C?

k = -10; j = 2;
for i=1:3:10
  if(mod(i,2)==0)
    k = k + i;
  else
    j = j + i;
  endif
endfor

% Questão 4 - Qual o valor final de k?
% Questão 5 - Qual o valor final de j?

M = eye(4);

% Questão 6 - Qual o valor de trace(M)?

M1 = eye(2); M2 = [1 0;-3 4]; M3 = M1+M2;

% Questão 7 - Qual o valor de sum(M3(:,1))?
% Questão 8 - Qual o valor de sum(M3(1,:))?

z1 = complex(1,1); z2 = complex(4,1);

% Questão 9 - Qual o valor de conj(z1)+z2?
% Questão 10 - Qual o valor de arg(z1)?

disp('2022/2 - Modelo C');
disp(strcat('01) ',num2str(A)));
disp(strcat('02) ',num2str(B)));
disp(strcat('03) ',num2str(C)));
disp(strcat('04) ',num2str(k)));
disp(strcat('05) ',num2str(j)));
disp(strcat('06) ',num2str(trace(M))));
disp(strcat('07) ',num2str(sum(M3(:,1)))));
disp(strcat('08) ',num2str(sum(M3(1,:)))));
disp(strcat('09) ',num2str(conj(z1)+z2)));
disp(strcat('10) ',num2str(arg(z1))));









