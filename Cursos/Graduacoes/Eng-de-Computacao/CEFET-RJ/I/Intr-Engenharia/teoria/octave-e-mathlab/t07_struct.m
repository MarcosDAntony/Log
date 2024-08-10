% =====================================================
% CEFET-RJ Campus Petropolis
% Faculdade de Engenharia de Computação
% GCOM1001PE - Introdução à Engenharia - 2022/1
% Prof. Rafael Saraiva Campos
% =====================================================
% Tutorial 5 - Estruturas, Arrays de Estruturas
% =====================================================
clear; clc; close all;

% cria estrutura com 5 campos
% - rx: potência do sinal recebido (dBm)
% - tx: potência máxima de transmissão (dBm)
% - carrier: portadoras habilitadas
% - battery: carga da bateria(%)
% - handoff: handoff entre estações (on/off); tipo (soft/softer)
% note que os campos de uma estrutura podem ser de tipos distintos
% neste exemplo, há 3 campos com números (rx,tx,battery), 1 campo com um
% array numérico (ou seja, o vetor linha no campo carrier) e 1 campo
% com um cell array 1x2 (handoff)
S.rx=-95;
S.tx=20;
S.carrier=[201 242 283];
S.battery=0.9;
S.handoff={'on','softer'};
S % apenas para exibir o conteúdo da recém-criada estrutura

input('pression qualquer tecla...'); disp(' ');

% é possível ordenar os campos de uma estrutura em ordem alfabética
S = orderfields(S)

input('pression qualquer tecla...'); disp(' ');

% o comando FIELDNAMES retorna um cell array contendo os nomes dos campos
% de estrutura
fieldNames = fieldnames(S)

input('pression qualquer tecla...'); disp(' ');

% converte a estrutura em um cell array
C = struct2cell(S)

input('pression qualquer tecla...'); disp(' ');

% agora vamos criar um array de estruturas (structure array)
% primeiro, definimos os dados para cada usuário utilizando cell arrays
% "User" é um cell array cujos elementos são cell arrays
% note que os valores correspondem aos campos da estrutura S após a
% ordenação alfabética
User{1} = C; 
User{2} = {.85;[160 201 242];{'on','soft'};-100;23};
User{3} = {.15;[160 201 242 283];{'on','soft','softer'};-60;15};

% a cada passo do loop, converte o cell array definido por "User{i}"
% para uma estrutura, com os campos listados em "fieldNames"
% o comando CELL2STRUCT recebe os seguintes argumentos:
% 1) cell array com os valores dos campos
% 2) lista dos nomes dos campos (na mesma ordem do cell array)
% 3) dimensão ao longo da qual o array de estruturas será criado (1-
% linhas; 2 - colunas)
for i=1:3
    mobileUser(i)=cell2struct(User{i},fieldNames,1);
end;    

% ao final, tem-se um array 1x3 de estruturas
% cada elemento do array é uma estrutura do tipo definido em S
mobileUser

input('pression qualquer tecla...'); disp(' ');

% acessando elementos do array de estruturas
disp('Nivel de potencia recebida pelo usuario 1');
disp(mobileUser(1).rx);
disp('');

input('pression qualquer tecla...'); disp(' ');

disp('Primeira portadora habilitada para o usuario 2');
disp(mobileUser(2).carrier(1));
disp('');

input('pression qualquer tecla...'); disp(' ');

disp('Segundo parametro de handoff para o usuario 3');
% note a indexacao: "mobileUser" é um array de estruturas, utiliza-se
% parênteses "(" ao lado do índice; "handoff" é um cell array, utiliza-se
% chaves "{" ao lado do índice
disp(mobileUser(3).handoff{2});
disp('');


