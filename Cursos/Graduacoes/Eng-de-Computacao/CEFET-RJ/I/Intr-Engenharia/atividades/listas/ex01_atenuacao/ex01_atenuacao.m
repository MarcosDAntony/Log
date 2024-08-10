%===================================
% CEFET/RJ - CAMPUS PETRÓPOLIS
% GRADUAÇÃO EM ENGENHARIA DE COMPUTAÇÃO
% GCOM1001PE - Introdução à Engenharia
% PROF. RAFAEL SARAIVA CAMPOS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplicação #1: cálculo usando unidades log. da pot. recebida na 
% Terra de um sinal enviado por uma sonda espacial
%===================================

clearvars; % limpa a memória
clc; % limpa a tela
close all; % fecha todas as janelas gráficas que por acaso estejam abertas

% distância da sonda Voyager à Terra em UA(unidades astronômicas) em 15/5/22
% fonte: NASA JPL(Jet Propulsion Laboratory) 
% url: voyager.jpl.nasa.gov
dUA = 155.60614553; % 1 UA é a distância da terra ao Sol

% frequência central do canal de comunicação entre a sonda e a Terra
% fonte: NASA JPL(Jet Propulsion Laboratory) 
% url: voyager.jpl.nasa.gov/mission/spacecraft/interactive.php
f = 8.4; % em GHz (1 GHz = 1000 MHz)

% ganho isotrópico da antena da sonda na banda X
% fonte: Radar Tutorial - SSR: distance measurements to satellites
% url: radartutorial.eu/13.ssr/sr84.en.html
Gt = 48; 

% potência de transmissão(W) da sonda
% fonte:“Voyager 2” Sends Messages from Interstellar Space with Minimal Signal (Wondrium Daily Article)
% url: wondriumdaily.com/voyager-2-sends-messages-from-interstellar-space-with-minimal-signal/
PtW = 20;

% ganho isotrópico da antena receptora na banda X
% fonte: The Deep Space Network Radio Astronomy User Guide
% url: deepspace.jpl.nasa.gov/files/DSN_Radio_Astronomy_Users_Guide.pdf
Gr = 74.55;

% converte a potência transmitida em Watts para a escala logarítmica (dBm)
Pt = 10*log10(1000*PtW);

% converte a distância em UA para km
UA = 1.496e11; % 1 UA em km
d = dUA*UA;

% atenuação de espaço livre do enlace sonda->Terra
A0 = 32.4 + 20*log10(1000*f) + 20*log10(d);

% potência média recebida (dBm) considerando apenas atenuação de espaço livre 
% e desprezando perdas em cabos e conectores
Pr = Pt + Gt - A0 + Gr ;






