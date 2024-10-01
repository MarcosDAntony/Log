%===================================
% CEFET/RJ - CAMPUS PETRÓPOLIS
% GRADUAÇÃO EM ENGENHARIA DE COMPUTAÇÃO
% GCOM1001PE - Introdução à Engenharia
% PROF. RAFAEL SARAIVA CAMPOS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplicação #4: integração numérica
%===================================

clearvars; % limpa a memória
clc; % limpa a tela
close all; % fecha todas as janelas gráficas que por acaso estejam abertas

% define function handler para a função escolhida
f=@(x)(2*sin(3*x).*(x-1).^2);

% extremo inferior do intervalo de integração
a=0;

% extremo superior do intervalo de integração
b=2;

% número de subintervalos
n=30;

% largura dos retângulos
dx=(b-a)/n;

% coordenada x do vértice esquerdo de cada retângulo
xl=a:dx:b-dx;

% somatório das áreas dos n retângulos
A=sum(abs(f(xl))*dx);

% área da região entre a curva e o eixo x usando a função built-in quad
I=quad(@(x)(abs(f(x))),a,b);

for i=1:n
  rectangle('Position',[xl(i) 0 dx f(xl(i))],'FaceColor','r','EdgeColor','g');
  hold on;
end;  

% plota o gráfico da função f entre a e b
s=a:0.01:b;
plot(s,f(s),'LineWidth',2,'Color','k');
grid on;
xlim([a b]);
set(gca,'FontSize',18);
pbaspect([1 1 1]);
title(strcat(num2str(A),'(',num2str(I),')'));
  
  






