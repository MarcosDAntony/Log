% ----------------------------------------------------------------
% CEFET/RJ - UNED PETROPOLIS - ENGENHARIA DE COMPUTACAO
% ALGEBRA LINEAR - PROF. RAFAEL SARAIVA CAMPOS - 2014/02
% ----------------------------------------------------------------
% Exemplo de utilizacao da funcao fcnMatrizEscada
% ----------------------------------------------------------------

clear; clc;

A= [ 3     1     2     4     5     0     9;
     0     2     7     8     0     0   -10;
     9     1     0     3    -2     9     0;
     0     1     2     5    -1     5     7;
     0     0     2     3    -1    -2   -10;
     0     0     3    10    23     1   -50;
     3     1     2     4     5     0     9;     
     3     1     2     4     5     0     9];
 
[G,N] = fcnMatrizEscada(A);

disp(A);
disp(' ');
disp(G);
disp(' ');
disp(N);