%===================================
% CEFET/RJ - CAMPUS PETRÓPOLIS
% GRADUAÇÃO EM ENGENHARIA DE COMPUTAÇÃO
% GCOM1001PE - Introdução à Engenharia
% PROF. RAFAEL SARAIVA CAMPOS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplicação #2: calculando uma aproximação para o valor de pi
%===================================

clearvars; % limpa a memória
clc; % limpa a tela
close all; % fecha todas as janelas gráficas que por acaso estejam abertas

n = 50;
r = 1;

P = linspace(0,360,n+1); 

X = r*cosd(P);
Y = r*sind(P);

for i=1:n
  scatter(X(i),Y(i),'k','filled');
  hold on;
  line([X(i) X(i+1)],[Y(i) Y(i+1)],'Color','r');
end;  

x = -r:.01:r;
plot(x,sqrt(r-x.^2),'LineStyle','--','Color','k');
plot(x,-sqrt(r-x.^2),'LineStyle','--','Color','k');
pbaspect([1 1 1]);

% comprimento do lado do polígono regular inscrito
d = sqrt((X(1)-X(2))^2 + (Y(1)-Y(2))^2); 

% o perímetro do polígono é igual ao número de lados multiplicado
% pelo comprimento d; como o polígono inscrito é
PI = n*d/(2*r);

title(num2str(PI));

% -----------------------------------------

for n=1:100  
  
  disp(n);
  
  P = linspace(0,360,n+1); 
  X = r*cosd(P);
  Y = r*sind(P);

  d = sqrt((X(1)-X(2))^2 + (Y(1)-Y(2))^2);     
  PI(n) = n*d/(2*r);
  
end;  

figure;
plot(PI,'LineWidth',2,'Color','r');
grid on;
xlim([1 n]);
ylim([0 3.15]);
set(gca,'YTick',0:0.15:3.15,'XTick',10:10:n,'FontSize',14);
xlabel('número de lados do polígono regular inscrito no círculo','FontSize',20);
ylabel('valor aproximado de \pi','FontSize',20);

