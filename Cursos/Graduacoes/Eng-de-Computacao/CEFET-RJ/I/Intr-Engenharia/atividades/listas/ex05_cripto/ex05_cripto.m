%===================================
% CEFET/RJ - CAMPUS PETRÓPOLIS
% GRADUAÇÃO EM ENGENHARIA DE COMPUTAÇÃO
% GCOM1001PE - Introdução à Engenharia
% PROF. RAFAEL SARAIVA CAMPOS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplicação #5: criptografia simples (cifra do livro)
%===================================
clearvars; close all; clc;

alfabeto = ['a':'z','A':'Z','0':'9',' ',',','.',':','-'];

% número de repeticoes de cada caracter do alfabeto
N = 100; 

% cria o dicionario
dicionario = criaDicionario(alfabeto,N);

% codifica a mensagem
codificaMsg(dicionario,'msg.txt','cmsg.txt');

% decodifica a mensagem
decodificaMsg(dicionario,'cmsg.txt','rmsg.txt');
  
