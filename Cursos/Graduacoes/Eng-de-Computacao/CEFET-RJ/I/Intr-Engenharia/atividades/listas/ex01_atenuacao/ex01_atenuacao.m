%===================================
% CEFET/RJ - CAMPUS PETR�POLIS
% GRADUA��O EM ENGENHARIA DE COMPUTA��O
% GCOM1001PE - Introdu��o � Engenharia
% PROF. RAFAEL SARAIVA CAMPOS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplica��o #1: c�lculo usando unidades log. da pot. recebida na 
% Terra de um sinal enviado por uma sonda espacial
%===================================

clearvars; % limpa a mem�ria
clc; % limpa a tela
close all; % fecha todas as janelas gr�ficas que por acaso estejam abertas

% dist�ncia da sonda Voyager � Terra em UA(unidades astron�micas) em 15/5/22
% fonte: NASA JPL(Jet Propulsion Laboratory) 
% url: voyager.jpl.nasa.gov
dUA = 155.60614553; % 1 UA � a dist�ncia da terra ao Sol

% frequ�ncia central do canal de comunica��o entre a sonda e a Terra
% fonte: NASA JPL(Jet Propulsion Laboratory) 
% url: voyager.jpl.nasa.gov/mission/spacecraft/interactive.php
f = 8.4; % em GHz (1 GHz = 1000 MHz)

% ganho isotr�pico da antena da sonda na banda X
% fonte: Radar Tutorial - SSR: distance measurements to satellites
% url: radartutorial.eu/13.ssr/sr84.en.html
Gt = 48; 

% pot�ncia de transmiss�o(W) da sonda
% fonte:�Voyager 2� Sends Messages from Interstellar Space with Minimal Signal (WondrLogPassaily Article)
% url: wondriumlogpass.com/voyager-2-sends-messages-from-interstellar-space-with-minimal-signal/
PtW = 20;

% ganho isotr�pico da antena receptora na banda X
% fonte: The Deep Space Network Radio Astronomy User Guide
% url: deepspace.jpl.nasa.gov/files/DSN_Radio_Astronomy_Users_Guide.pdf
Gr = 74.55;

% converte a pot�ncia transmitida em Watts para a escala logar�tmica (dBm)
Pt = 10*log10(1000*PtW);

% converte a dist�ncia em UA para km
UA = 1.496e11; % 1 UA em km
d = dUA*UA;

% atenua��o de espa�o livre do enlace sonda->Terra
A0 = 32.4 + 20*log10(1000*f) + 20*log10(d);

% pot�ncia m�dia recebida (dBm) considerando apenas atenua��o de espa�o livre 
% e desprezando perdas em cabos e conectores
Pr = Pt + Gt - A0 + Gr ;






