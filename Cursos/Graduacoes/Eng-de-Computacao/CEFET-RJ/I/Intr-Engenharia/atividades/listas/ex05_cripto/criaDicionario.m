function [dicionario]=criaDicionario(alfabeto,N)
%===================================
% CEFET/RJ - CAMPUS PETRÓPOLIS
% GRADUAÇÃO EM ENGENHARIA DE COMPUTAÇÃO
% GCOM1001PE - Introdução à Engenharia
% PROF. RAFAEL SARAIVA CAMPOS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplicação #4: criptografia simples (cifra do livro)
%===================================
% função criaDicionario
% parâmetros de entrada
%   alfabeto - conjunto de caracteres alfanuméricos
%   N - número de repeticoes de cada caracter
% parâmetros de saída
%   dicionario - o dicionario de codificacao
%===================================
dicionario='';
n = length(alfabeto);
for i=1:n % repete cada caracter N vezes
  dicionario = cat(2,dicionario,repmat(char(alfabeto(i)),1,N));
end;
% randomiza os indices
indices = randperm(n*N);
% novo dicionario, com os caracteres "embaralhados"
dicionario = dicionario(indices);  
