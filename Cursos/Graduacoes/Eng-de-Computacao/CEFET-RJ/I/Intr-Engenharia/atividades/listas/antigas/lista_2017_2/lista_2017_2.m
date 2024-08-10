%--------------------------------------
% CEFET/RJ - ENGENHARIA DE COMPUTACAO
% INTRODUCAO A ENGENHARIA
% PROF. RAFAEL SARAIVA CAMPOS
%--------------------------------------
% 1A LISTA DE REVISAO 2017-2
%--------------------------------------

% limpa todas as variaveis da memoria
clear; 

% fecha todas as janelas
close all; 

% limpa a tela
clc;

% ----------
% Questao 01
% ----------

disp('*** QUESTAO 01 ***');

% numero de elementos da serie
n = 100; 

% vetor 1,...,n
i=1:n; 

% calcula os elementos de serie, para i=1 ate i=n
v = (2*i.*(-1).^i)./(i+1);

% plota grafico dos n primeiros elementos
plot(1:20,v(1:20));

% exibe linhas de grade
grid on;

% rotulos dos eixos
xlabel('i');
ylabel('S_i');

% soma dos n primeiros termos
disp(sum(v));

% titulo do grafico
title('Questao 1');

% ----------
% Questao 02
% ----------

x=-1:0.01:1;

f=sin(x)./x;
g=cos(x);
h=1./cos(x);

figure; %abre nova janela

plot(x,f,'Color','r','LineWidth',2);
grid on; % exibe linhas de grade
hold on; % impede que o grafico anterior seja apagado

plot(x,g,'Color','b','LineWidth',2);
plot(x,h,'Color','k','LineWidth',2);

% exibe a legenda; note que a ordem dos termos na legenda deve ser a mesma
% ordem de exibicao dos graficos
legend('f(x)=sin(x)/x','g(x)=cos(x)','h(x)=1/cos(x)');

% titulo do grafico
title('Questao 2');

% ----------
% Questao 03
% ----------

disp('*** QUESTAO 03 ***');

% pre-aloca memoria para o vetor-coluna que armazenara os termos da serie
F=zeros(100,1); % N elementos nulos (N linhas x 1 coluna)

% os dois primeiros termos da serie sao unitarios
F(1)=1;
F(2)=1;

for i=3:100
    % o i-esimo termo eh igual a soma dos dois termos precedentes
    F(i)=F(i-1)+F(i-2);
end;

% exibe o centesimo termo da serie
disp(F(100));

% exibe a soma do decimo e decimo-primeiro termos
disp(F(10)+F(11));


% ----------
% Questao 04
% ----------

% vetor com valores entre -2pi e +2pi, com passo pi/100
x=-2*pi:pi/100:2*pi;

figure; % abre nova janela

% primeiro sub-grafico
subplot(2,2,1);
plot(x,sin(x),'b');
hold on; grid on;
plot(x,cos(x),'r');
title('Questao 04');

% exibe a legenda
legend('f(x)=sin(x)','g(x)=cos(x)');

% rotula os eixos
xlabel('x');
ylabel('y');

% segundo sub-grafico
subplot(2,2,2);
plot(x,sin(x),'b');
hold on; grid on;
plot(x,cos(x+pi/2),'r');

% exibe a legenda
legend('f(x)=sin(x)','g(x)=cos(x+pi/2)');

% rotula os eixos
xlabel('x');
ylabel('y');


% ----------
% Questao 05
% ----------

disp('*** QUESTAO 05 ***');

a=1; b=3;
% retorna 0 (a soma eh par)
disp(isSumOdd(a,b));

a=1;b=1;
% retorna -1 (os numeros sao iguais)
disp(isSumOdd(a,b));

a=1;b=4;
% retorna 1 (a soma eh impar)
disp(isSumOdd(a,b));

% ----------
% Questao 06
% ----------

disp('*** QUESTAO 05 ***');

disp('O fatorial de 4 eh:');
disp(FATORIAL(4));

disp('O fatorial de 7 eh:');
disp(FATORIAL(7));

% ----------
% Questao 07
% ----------

disp('*** QUESTAO 07 ***');

% gera 100 numeros aleatorios entre 0 e 1
v = rand(100,1);

% conta quantos numeros sao maiores que 1/2 e menores ou iguais a 1
% i) note que, como os numeros sao selecionados aleatoriamente, o resultado
% vai variar a cada execucao do programa
% ii) o comando find(v>1/2) retorna um vetor com os indices dos elementos
% em "v" que sao maiores que 1/2
% iii) o comando length retorna o numero de elementos do vetor descrito em (ii)
disp(length(find(v>1/2)));

% ----------
% Questao 08
% ----------

% vetor com valores entre -2pi e +2pi, com passo pi/100
x=-2*pi:pi/100:2*pi;

F=abs(sin(x));

i=find(F>1/2);

F(i)=1/2;

figure;
plot(x,F);
grid on;
title('Questao 08');
ylim([0 1]);
xlim([-7 7]);
pbaspect([7 1 1]);

% ----------
% Questao 09
% ----------

figure;
[x,y]=meshgrid(-2:0.01:2);
mesh(x,y,x.*exp(-x.^2-y.^2));
colormap jet;
title('Questao 09');
colorbar;

% ----------
% Questao 10
% ----------

figure;

subplot(2,2,1);
x=-20:0.001:20;
plot(x,sin(x)./abs(x)); grid on;
legend('sin(x)/|x|');
title('Questao 10');

subplot(2,2,2);
plot(x,x,'k'); hold on;
plot(x,-x,'k');
plot(x,x.*cos(50*pi./x),'r'); grid on;
legend('x','-x','x*cos(50\pi/x)');
 
subplot(2,2,3);
plot(x,cos(pi./x)./(x-2)); grid on;
legend('cos(\pi/x)/(x-2)');
xlim([0 2]);
 
subplot(2,2,4); a=1; b=2; 
plot(x,tan(a*x)./sin(b*x)); grid on;
xlim([-1 1]);
legend('tan(a*x)./sin(b*x)');
 
