clearvars; clc; close all;

Pessoa={'Rafael',47,1.80;
         'Ana',27,1.65;
         'John',39,1.95};

idade = cell2mat(Pessoa(:,2));
altura = cell2mat(Pessoa(:,3));

maisAlto = Pessoa{find(altura==max(altura)),1}
maisBaixo = Pessoa{find(altura==min(altura)),1}
maisVelho = Pessoa{find(idade==max(idade)),1}
maisNovo = Pessoa{find(idade==min(idade)),1}
alturaMedia = mean(altura)



