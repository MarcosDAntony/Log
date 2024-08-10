% =====================================================
% CEFET-RJ Campus Petropolis
% Faculdade de Engenharia de Computação
% GCOM1001PE - Introdução à Engenharia - 2022/1
% Prof. Rafael Saraiva Campos
% =====================================================
% Tutorial 4 - Cell Arrays 
% Endereçamento, fatiamento (slicing) e reshaping
% =====================================================
clc; close all; clearvars;

C = {1984,'Van Hallen','Jump',8.5,[1 2;4 5];
     2000,'Halford','Ressurrection',10.0,[3 2;1 1];
     2000,'Dio','Fever Dreams',9.0,[4 4;2 2];
     1988,'Judas Priest','Ram It Down',9.0,[0 0;2 1]};
     
disp('retorna as células da 1a linha');
disp(C(1,:));
input('pressione qualquer tecla...'); disp(' ');

disp('retorna os valores das células da 1a linha'); 
C{1,:}
input('pressione qualquer tecla...'); disp(' ');

disp('retorna as células da 2a coluna');
disp(C(:,2));
input('pressione qualquer tecla...'); disp(' ');

disp('retorna os valores das células da 2a coluna');
C{:,2}
input('pressione qualquer tecla...'); disp(' ');

disp('Por exemplo, note que C(2,1) é uma célula...');
disp('iscell(C(2,1))=?');
iscell(C(2,1))
input('pressione qualquer tecla...'); disp(' ');

disp('Enquanto C{2,1} retorna o valor armazenado na célula C(2,1)...');
C{2,1}
input('pressione qualquer tecla...'); disp(' ');

disp('Mudando o formato (num. de linhas x num. de colunas) do cell array com a função reshape...');
disp(reshape(C,10,2));