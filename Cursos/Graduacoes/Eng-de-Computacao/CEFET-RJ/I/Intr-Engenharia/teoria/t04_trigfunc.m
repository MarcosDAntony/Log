% =====================================================
% CEFET-RJ Campus Petropolis
% Faculdade de Engenharia de Computação
% GCOM1001PE - Introdução à Engenharia - 2022/1
% Prof. Rafael Saraiva Campos
% =====================================================
% Tutorial 6 - Finções trigonométricas e suas inversas
% =====================================================
close all; clc; clear;

%=== Seno e cosseno ==========
subplot(3,2,1);

% o vetor x cobre 4 ciclos completos
% um ciclo compreende o intervalo [0,2pi]
x=-4*pi:pi/50:4*pi; % valores em radianos

% plota as funcoes seno e cosseno
plot(x,sin(x),'Color','k','LineWidth',2); 
grid on; hold on;
plot(x,cos(x),'Color','r','LineWidth',2); 

% define a legenda do grafico
legend('sen(x)','cos(x)');

% define os limites do eixo horizontal
% primeiro e ultimo valores do vetor x
xlim([x(1) x(length(x))]);
xlabel('arc(rad)');

% define a localização das marcas (ticks) no eixo x
set(gca,'XTick',pi*(-4:.5:4));

% rótulos das marcas no eixo x
LABELS={'-4pi','-7pi/2','-3pi','-5pi/2','-2pi','-3pi/2','-pi',...
    '-pi/2','0','pi/2','pi','3pi/2','2pi','5pi/2','3pi','7pi/2','4pi'};

% define os valores(rótulos) das marcas no eixo x
set(gca,'XTickLabel',LABELS);

% exibe título do gráfico
title('(a)'); 

%=== Arco-seno e arco-cosseno ==========
subplot(3,2,2);

% para plotar as funcoes arco-seno e arco-cosseno
% o domínio deve ser definido no intervalo [-1,1]
x=-1:0.01:1;

% plota as funcoes arco-seno e arco-cosseno
plot(x,asin(x),'Color','k','LineWidth',2); 
grid on; hold on;
plot(x,acos(x),'Color','r','LineWidth',2); 

% define a legenda do grafico
legend('asen(x)','acos(x)');

% define o rotulo do eixo vertical
ylabel('arc(rad)');

% especifica os limites do eixo vertical
ylim([-pi/2 pi]);

% define a localização das marcas (ticks) no eixo y
set(gca,'YTick',pi*(-1/2:1/4:1));

% rótulos das marcas no eixo y
LABELS={'-pi/2','-pi/4','0','pi/4','pi/2','3pi/4','pi'};

% define os valores(rótulos) das marcas no eixo y
set(gca,'YTickLabel',LABELS);

% exibe título do gráfico
title('(b)'); 

%=== Secante e cossecante ==========
subplot(3,2,3);

% plota a funcao secante
% a funcao secante tem uma descontinuidade no infinito
% em torno dos pontos x=(2n+1)pi/2, n=...,-2,-1,0,1,2,...
% por essa razao, faz-se necessario truncar os valores da funcao
% na vizinhanca destes pontos de descontinuidade
k=[-.9 .9;1.1 2.9;3.1 4.9];
for i=1:3
    x=k(i,1)*pi/2:pi/100:k(i,2)*pi/2;
    % p1 define um "rótulo" para o gráfico gerado por PLOT
    % p1 será utilizado com o comando LEGEND mais à frente
    % o nome a ser exibido na legenda é especificado pela propriedade 'Displayname'
    p1=plot(x,sec(x),'Color','k','LineWidth',2,'DisplayName','sec(x)'); 
    hold on; grid on;
end;

% plota a funcao cossecante
% a funcao secante tem uma descontinuidade no infinito
% em torno dos pontos x=n*pi, n=...,-2,-1,0,1,2,...
% por essa razao, faz-se necessario truncar os valores da funcao
% na vizinhanca destes pontos de descontinuidade
k=[0.05 .95;1.05 1.95;2.05 2.95];
for i=1:3
     x=k(i,1)*pi:pi/100:k(i,2)*pi;
     % p2 define um "rótulo" para o gráfico gerado por PLOT
     % p2 será utilizado com o comando LEGEND mais à frente
     % o nome a ser exibido na legenda é especificado pela propriedade 'Displayname'    
     p2=plot(x,csc(x),'Color','r','LineWidth',2,'DisplayName','csc(x)'); 
end;

% traca as retas y=-1 e y=1
% os valores das funcoes secante e cossencante sao sempre
% maiores ou iguais a 1 ou menores ou iguais a -1
line([-2 10],[1 1],'Color','k','LineStyle','--');
line([-2 10],[-1 -1],'Color','k','LineStyle','--');

% traca as retas verticais indicando os pontos de descontinuidade
% das funcoes secante e cossecante
k=-pi/2:pi/2:3*pi;
for i=1:length(k)
    line(k(i)*[1 1],[-8 8],'LineStyle','--','Color','k');
end;

% define o rótulo do eixo horizontal
xlabel('arc(rad)');

% define os limites do eixo vertical
ylim([-8 8]);

% exibe na legenda as entradas correspondentes às curvas p1 e p2
% o parâmetro 'Location' define a posição da legenda no gráfico:
% - southwest (à esq. em baixo)
% - northwest (à esq. em cima)
% - southeast (à dir. em baixo)
% - northeast (à dir. em cima)
legend([p1 p2],'Location','southeast');

% define a localização das marcas (ticks) no eixo x
set(gca,'XTick',pi*(-1/2:1/2:3));

% rótulos das marcas no eixo x
LABELS={'-pi/2','0','pi/2','pi','3pi/2','2pi','5pi/2','3pi'};

% define os valores(rótulos) das marcas no eixo x
set(gca,'XTickLabel',LABELS);

% exibe título do gráfico
title('(c)'); 

%=== Arco-secante e arco-cossecante ==========
subplot(3,2,4);

% o domínio das funções arco-secante e arco-cossecante
% é o conjunto dos reais [-Inf,-1] U [1,+Inf]
% contudo, é necessário truncar o gráfico em algum valor
x=-10:0.01:-1;

% plota as funcoes arco-secante e arco-cossecante
p1=plot(x,asec(x),'Color','k','LineWidth',2,'DisplayName','asec(x)'); 
grid on; hold on;
p2=plot(x,acsc(x),'Color','r','LineWidth',2,'DisplayName','acsc(x)'); 

% repete para o segundo intervalo ([1,+Inf])
x=1:0.01:10;
plot(x,asec(x),'Color','k','LineWidth',2); 
plot(x,acsc(x),'Color','r','LineWidth',2); 

% plota as assintotas horizontais
line([-10 10],[0 0],'LineStyle','--');
line([-10 10],[pi/2 pi/2],'LineStyle','--');

% plota as retas x=-1 e x=1
line([-1 -1],[-pi/2 pi],'LineStyle','--');
line([1 1],[-pi/2 pi],'LineStyle','--');

% define limites do eixo vertical
ylim([-pi/2 pi]);

% define rótulo do eixo vertical
ylabel('arc(rad)');

% define a localização das marcas (ticks) no eixo y
set(gca,'YTick',pi*(-1/2:1/4:1));

% rótulos das marcas no eixo y
LABELS={'-pi/2','-pi/4','0','pi/4','pi/2','3pi/4','pi'};

% define os valores(rótulos) das marcas no eixo y
set(gca,'YTickLabel',LABELS);

% exibe a legenda
legend([p1 p2],'Location','southeast');

% exibe título do gráfico
title('(d)'); 

%=== Tangente e cotangente ==========
subplot(3,2,5);

% plota a funcao tangente
% a funcao tangente tem uma descontinuidade no infinito
% em torno dos pontos x=(2n+1)pi/2, n=...,-2,-1,0,1,2,...
% por essa razao, faz-se necessario truncar os valores da funcao
% na vizinhanca destes pontos de descontinuidade
k=[-.9 .9;1.1 2.9;3.1 4.9];
for i=1:3
    x=k(i,1)*pi/2:pi/100:k(i,2)*pi/2;
    % p1 define um "rótulo" para o gráfico gerado por PLOT
    % p1 será utilizado com o comando LEGEND mais à frente
    % o nome a ser exibido na legenda é especificado pela propriedade 'Displayname'
    p1=plot(x,tan(x),'Color','k','LineWidth',2,'DisplayName','tan(x)'); 
    hold on; grid on;
end;

% plota a funcao cotangente
% a funcao cotangente tem uma descontinuidade no infinito
% em torno dos pontos x=n*pi, n=...,-2,-1,0,1,2,...
% por essa razao, faz-se necessario truncar os valores da funcao
% na vizinhanca destes pontos de descontinuidade
k=[0.05 .95;1.05 1.95;2.05 2.95];
for i=1:3
     x=k(i,1)*pi:pi/100:k(i,2)*pi;
     % p2 define um "rótulo" para o gráfico gerado por PLOT
     % p2 será utilizado com o comando LEGEND mais à frente
     % o nome a ser exibido na legenda é especificado pela propriedade 'Displayname'    
     p2=plot(x,cot(x),'Color','r','LineWidth',2,'DisplayName','cot(x)'); 
end;

% traca as retas verticais indicando os pontos de descontinuidade
% das funcoes tangente e cotangente
k=-pi/2:pi/2:3*pi;
for i=1:length(k)
    line(k(i)*[1 1],[-8 8],'LineStyle','--','Color','k');
end;

% define o rótulo do eixo horizontal
xlabel('arc(rad)');

% define os limites do eixo vertical
ylim([-8 8]);

% exibe na legenda as entradas correspondentes às curvas p1 e p2
% o parâmetro 'Location' define a posição da legenda no gráfico:
% - southwest (à esq. em baixo)
% - northwest (à esq. em cima)
% - southeast (à dir. em baixo)
% - northeast (à dir. em cima)
legend([p1 p2],'Location','southeast');

% define a localização das marcas (ticks) no eixo x
set(gca,'XTick',pi*(-1/2:1/2:3));

% rótulos das marcas no eixo x
LABELS={'-pi/2','0','pi/2','pi','3pi/2','2pi','5pi/2','3pi'};

% define os valores(rótulos) das marcas no eixo x
set(gca,'XTickLabel',LABELS);

% exibe título do gráfico
title('(e)'); 

%=== Arco-tangente e arco-cotangente ==========
subplot(3,2,6);

% o domínio das funções arco-tangente e arco-cotangente 
% é o conjunto dos reais [-Inf,+Inf]
% contudo, é necessário truncar o gráfico em algum valor
x=-10:0.01:10;

% plota as funcoes arco-tangente e arco-cotangente
% note a descontinuidade da função f(x)=acot(x) em x=0
plot(x,atan(x),'Color','k','LineWidth',2); 
grid on; hold on;
plot(x,acot(x),'Color','r','LineWidth',2);

% define a legenda do gráfico
legend('atan(x)','acot(x)');

% define limites do eixo vertical
ylim([-pi/2 pi/2]);

% define rótulo do eixo vertical
ylabel('arc(rad)');

% define a localização das marcas (ticks) no eixo y
set(gca,'YTick',pi*(-1/2:1/4:1/2));

% rótulos das marcas no eixo y
LABELS={'-pi/2','-pi/4','0','pi/4','pi/2'};

% define os valores(rótulos) das marcas no eixo y
set(gca,'YTickLabel',LABELS);

% exibe título do gráfico
title('(f)'); 
