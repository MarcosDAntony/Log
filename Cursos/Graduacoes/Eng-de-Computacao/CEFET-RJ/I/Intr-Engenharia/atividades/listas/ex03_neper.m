%===================================
% CEFET/RJ - CAMPUS PETRÓPOLIS
% GRADUAÇÃO EM ENGENHARIA DE COMPUTAÇÃO
% GCOM1001PE - Introdução à Engenharia
% PROF. RAFAEL SARAIVA CAMPOS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplicação #3: calculando uma aprox. p/a constante de Neper
%===================================
clearvars; clc; close all;

M0=input('Investimento inicial: R$ ');
disp('Período de aplicação: 1 ano');

% para obter uma aproximação para a constante de Neper, faça R=100%
% para avaliar a qualidade da aproximação, compare com valor de exp(1)
R=input('Rentabilidade anual(%): ')/100;

disp(strcat('Montante final: R$ ',num2str(M0*(1+R))));

disp(' '); N=2;
input('E se o banco remunerar a aplicação semestralmente?');
disp(strcat('Períodos de remuneração em 1 ano:',num2str(N)));
disp(strcat('Rentabilidade por período de remuneração(%):',num2str(100*R/N)));
disp(strcat('Montante final: R$ ',num2str(M0*(1+R/N)^N,'%.2f')));

disp(' '); N=4;
input('E se o banco remunerar a aplicação trimestralmente?');
disp(strcat('Períodos de remuneração em 1 ano:',num2str(N)));
disp(strcat('Rentabilidade por período de remuneração(%):',num2str(100*R/N)));
disp(strcat('Montante final: R$ ',num2str(M0*(1+R/N)^N,'%.2f')));

disp(' '); N=12;
input('E se o banco remunerar a aplicação mensalmente?');
disp(strcat('Períodos de remuneração em 1 ano:',num2str(N)));
disp(strcat('Rentabilidade por período de remuneração(%):',num2str(100*R/N)));
disp(strcat('Montante final: R$ ',num2str(M0*(1+R/N)^N,'%.2f')));

disp(' '); N=365;
input('E se o banco remunerar a aplicação diariamente?');
disp(strcat('Períodos de remuneração em 1 ano:',num2str(N)));
disp(strcat('Rentabilidade por período de remuneração(%):',num2str(100*R/N)));
disp(strcat('Montante final: R$ ',num2str(M0*(1+R/N)^N,'%.2f')));

disp(' '); N=365*24;
input('E se o banco remunerar a aplicação de hora em hora?');
disp(strcat('Períodos de remuneração em 1 ano:',num2str(N)));
disp(strcat('Rentabilidade por período de remuneração(%):',num2str(100*R/N)));
disp(strcat('Montante final: R$ ',num2str(M0*(1+R/N)^N,'%.2f')));

disp(' '); N=365*24*60;
input('E se o banco remunerar a aplicação minuto a minuto?');
disp(strcat('Períodos de remuneração em 1 ano:',num2str(N)));
disp(strcat('Rentabilidade por período de remuneração(%):',num2str(100*R/N)));
disp(strcat('Montante final: R$ ',num2str(M0*(1+R/N)^N,'%.2f')));

% plota o gráfico
f=@(R,x)((1+R./x).^x);
x=1:500;
plot(x,f(R,x),'b');
hold on;
line([min(x) max(x)],[exp(R) exp(R)],'Color','r','LineStyle','--');
grid on;
xlim([min(x) max(x)]);
set(gca,'FontSize',18);
xlabel('Número de períodos de remuneração no intervalo considerado');
ylabel('Montante Final (expresso em múltiplos de M0)');
title(strcat('R(%)=',num2str(100*R)));
