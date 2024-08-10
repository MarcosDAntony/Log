clearvars; clc; close all;

caractere = inputdlg('Digite um caracter maiusculo:');
caractere = upper(caractere{1,1}); % garante que seja maiusculo

Vogais = ['A','E','I','O','U'];
Consoantes = setdiff('A':'Z',Vogais);

if(~isempty(find(Vogais==caractere)))
  disp('Vogal');
elseif(~isempty(find(Consoantes==caractere)))
  disp('Consoante');
else
  disp('Outros');
endif






