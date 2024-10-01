clearvars; clc;

% Questão 1
mensagem = 'eu_estudo_calculo_02';
n = length(mensagem);
A = n*eye(n);
S = trace(A)

% Questão 2
f=@(a,b)(sqrt(a^2+b^2)-5);
x=mod(1008,5);
y=floor(13/3);
F=f(x,y)

% Questão 3
SOMA = -5;
for i=1:2:10
  SOMA = SOMA + mod(i,2);
endfor
SOMA

% Questão 4
B = [1 2 0;4 5 6;7 8 9];
C = sum(sum(triu(B)))-trace(B)

% Questão 5
z1=3+2*j;
z2=4+3*j;
Z = imag(z1)*abs(z2)


