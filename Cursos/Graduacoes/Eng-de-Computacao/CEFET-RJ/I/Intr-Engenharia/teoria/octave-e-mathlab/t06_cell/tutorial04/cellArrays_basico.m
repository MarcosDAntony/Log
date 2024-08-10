% =====================================================
% CEFET-RJ Campus Petropolis
% Faculdade de Engenharia de Computação
% GCOM1001PE - Introdução à Engenharia - 2022/1
% Prof. Rafael Saraiva Campos
% =====================================================
% Tutorial 4 - Cell Arrays
% =====================================================
% um cell array é um tipo de dados com containers indexados denominados 
% células (cells)
% as células podem conter qualquer tipo de dados (numérico, string, etc)
% matrizes podem conter apenas dados numéricos
% cell array comumente contém strings, combinações de texto e números, 
% e arrays numéricos de tamanhos distintos
% =====================================================
clc; close all; clearvars;

% cria um cell array vazio, com 3x2 elementos
C1=cell(3,2);

% preenche o cell array com números e texto
C1{1,1}=11; C1{1,2}='John Smith';
C1{2,1}=21; C1{2,2}='Winston';
C1{3,1}=31; C1{3,2}='Obrien';

% exibe o conteúdo do cell array
C1

input('pressione qualquer tecla...'); disp(' ');

% cria um cell array vazio, com 3x1 elementos
C2= cell(3,1);

% vamos preencher o cell array com matrizes de diferentes 
% dimensões
A = [3 4 5;5 6 7;9 1 0];
B = eye(5);
C = ones(7,1);

C2{1}=A;
C2{2}=B;
C2{3}=C;

% exibe o conteúdo do cell array
C2

input('pression qualquer tecla...'); disp(' ');

% cria cell array somente com strings
Disciplinas={'Geometria Analitica','Calculo I','Algebra Linear'};

% exibe o conteúdo do cell array
Disciplinas

input('pression qualquer tecla...'); disp(' ');

% acrescenta uma segunda linha, contendo o comprimento da string
for i=1:size(Disciplinas,2)
  Disciplinas{2,i}=length(Disciplinas{1,i});
end;
  
% exibe o conteúdo do cell array
Disciplinas

input('pressione qualquer tecla...'); disp(' ');

% converte cell array para matriz
% só é possível se todos os elementos do cell array forem numéricos
C3={1 2 3;4 5 6; 7 8 9};
C3
input('pression qualquer tecla...'); disp(' ');

M3=cell2mat(C3);
M3
input('pression qualquer tecla...'); disp(' ');