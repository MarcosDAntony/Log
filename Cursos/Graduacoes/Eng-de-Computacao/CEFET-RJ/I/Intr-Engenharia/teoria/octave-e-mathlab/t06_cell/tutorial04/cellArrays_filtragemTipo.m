% =====================================================
% CEFET-RJ Campus Petropolis
% Faculdade de Engenharia de Computação
% GCOM1001PE - Introdução à Engenharia - 2022/1
% Prof. Rafael Saraiva Campos
% =====================================================
% Tutorial 4 - Cell Arrays 
% Filtrando com base no tipo do elemento
% =====================================================
clc; close all; clearvars;

C = {1984,'Van Hallen','Jump',8.5,[1 2;4 5];
     2000,'Halford','Ressurrection',10.0,[3 2;1 1];
     2000,'Dio','Fever Dreams',9.0,[4 4;2 2];
     1988,'Judas Priest','Ram It Down',9.0,[0 0;2 1]};
     
[nlin,ncol]=size(C);

% seleciona apenas os elementos do tipo char array (strings)
for i=1:nlin
    for j=1:ncol
        if(ischar(C{i,j}))
            disp(C{i,j});
        end;
    end;
end;    
            

            


