% =====================================================
% CEFET-RJ Campus Petropolis
% Faculdade de Engenharia de Computação
% GCOM1001PE - Introdução à Engenharia - 2022/1
% Prof. Rafael Saraiva Campos
% =====================================================
% Tutorial 11 - Funções
% =====================================================
clear; clc; close all;

% cell array de strings com os nomes das medias calculadas
TITLE={'Aritmetica:','Geometrica:','Ponderada :'};

% chama função para calcular a média N numeros
% a funcao recebe 2 ou 3 parametros:
% - um vetor com os números cujo média deve ser calculada
% - uma string indicando o tipo de média a calcular
% (aritmetica,geometrica",ponderada)
% - um vetor com os pesos (no caso da média ponderada)
numeros = [7.8 9.0 5.6]
pesos = [1 2 3]
disp('------------------');
% a funcao STRCAT(STR1,STR2) concatena as strings STR1 e STR2
% a funcao NUM2STR(N) converte o escalar N para uma string
disp(strcat(TITLE{1},num2str(media(numeros,'aritmetica'))));
disp(strcat(TITLE{2},num2str(media(numeros,'geometrica'))));
disp(strcat(TITLE{3},num2str(media(numeros,'ponderada',pesos))));

disp(' '); input('pression qualquer tecla...'); disp(' ');

% faz a mesma coisa, porém agora utiliza "function handles"
% primeiro, define os "function handles"
% sintaxe para definir um "function handle":
% [nome do function handle]=@(lista de variáveis)(expressao)
f1 = @(X)(sum(X)/length(X)); % media aritmetica
f2 = @(X)(prod(X)^(1/length(X))); % media geometrica
f3 = @(X,P)(sum(X.*P)/sum(P)); % media ponderada
disp('------------------');
disp(strcat(TITLE{1},num2str(f1(numeros))));
disp(strcat(TITLE{2},num2str(f2(numeros))));
disp(strcat(TITLE{3},num2str(f3(numeros,pesos))));

disp(' '); input('pression qualquer tecla...'); disp(' ');

% idem anterior, porem agora cria um "cell array" de "function handles"
% ou seja, cada célula do array tem como elemento um "function handle"
f{1} = @(X,P)(sum(X)/length(X)); % media aritmetica
f{2} = @(X,P)(prod(X)^(1/length(X))); % media geometrica
f{3} = @(X,P)(sum(X.*P)/sum(P)); % media ponderada

% a vantagem de usar um cell array ficaria mais evidente se tivessemos mais
% funcoes; com um cell array, eh mais facil acessa-las usando, por exemplo,
% um loop FOR
disp('------------------');
for i=1:3
    disp(strcat(TITLE{i},num2str(f{i}(numeros,pesos))));
end;

disp(' '); input('pression qualquer tecla...'); disp(' ');

% a terceira funcao deve ser chamada separadamente, pois sua lista de
% parametros de entrada eh diferente
disp(strcat(TITLE{3},num2str(f{3}(numeros,pesos))));

% para encerrar, um exemplo de funcao recursiva (que chama a si mesma)
% para o cálculo do fatorial de um numero
% fatorial(n) = n*(n-1)*(n-2)*...3*2*1
disp('------------------');
for n=1:8
    disp(strcat('Fatorial de (',num2str(n),'):',num2str(fatorial(n))));
end;


