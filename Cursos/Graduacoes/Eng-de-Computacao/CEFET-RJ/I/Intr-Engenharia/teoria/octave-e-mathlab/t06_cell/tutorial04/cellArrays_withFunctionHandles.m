% =====================================================
% CEFET-RJ Campus Petropolis
% Faculdade de Engenharia de Computação
% GCOM1001PE - Introdução à Engenharia - 2022/1
% Prof. Rafael Saraiva Campos
% =====================================================
% Tutorial 4 - Cell Arrays with Function Handles
% =====================================================
clc; close all; clearvars;

f = {@(x)(x.^2), @(x)(x.^3), @(x)(sin(x)), @(x)(sqrt(abs(x))), @(x)(x)};

for i=2:5
    subplot(2,2,i-1); 
    I = numInt(f{1},f{i},0,1,100,1,1);
    title(strcat('Area Aprox. =',num2str(I)));
end;