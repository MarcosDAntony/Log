clearvars; clc; close all;
# --------------------------
# QUESTAO 1 - Qual o valor de "s" após a execução do trecho de código abaixo?
# --------------------------
# i = 1,4,7,10,13,16,19
# s = 4 + 10 + 16 = 30
# --------------------------
s=0;
for i=1:3:20
  if(mod(i,2)==0)
    s=s+i;
  endif
endfor
s

# --------------------------
# QUESTAO 2 - Quantas vezes a palavra "continue" será exibida na tela?
# --------------------------
% i = 15 > 12 = 1
% j = 6 <= 15 = 1
% i&&~j = 0
# --------------------------
A = [1 2 3;4 5 6;7 8 9];
i = trace(A)>sum(A(:,1));
j = sum(A(1,:))<=sum(A(:,2));
while(i&&~j)
  disp('continue');
endwhile

# --------------------------
# QUESTOES 3, 4 e 5 - Dada as matrizes B, C e D abaixo, informe os valores
# das operações indicadas.
# --------------------------
B = [1 1 2];
C = [0 2 5];
D = eye(3);
B*C'
B.*C
C*D

# --------------------------
# QUESTOES 6, 7 e 8, 9  - Dada as funcoes abaixo, informe os valores
# das operações indicadas.
# --------------------------
f=@(x,y)(x.^2+y.^2);
g=@(x)(sin(x)+cos(x));
f(1,1)
g(pi/2)
f(g(pi/4),g(pi/4))

# --------------------------
# QUESTOES 9 e 10  - Quais os valores de i e j após a execução do trecho de código a seguir?
# --------------------------
for i=1:2:10
  j=1;
  while(j<5)
    j=j+1;
  endwhile
endfor
i
j
