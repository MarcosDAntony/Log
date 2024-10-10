% =====================================================
% CEFET-RJ Campus Petropolis
% Faculdade de Engenharia de Computação
% GCOM1001PE - Introdução à Engenharia - 2022/1
% Prof. Rafael Saraiva Campos
% =====================================================
% Tutorial 7 - Polinômios
% =====================================================
clearvars; clc; close all;

% p(x) = x^4 + 2x^3 + 3x^2 + 1
P=[1 2 3 0 1]; 
disp('p(x)'); disp(P);  disp('');
disp('Raizes de p(x)'); disp(roots(P));  disp('');
input('pression qualquer tecla...'); disp(' ');

% q(x) = 2x^3 + 3x^2 + x
Q=[2 3 1 0]; 
disp('q(x)'); disp(Q); disp('');
disp('Raizes de q(x)'); disp(roots(Q)); disp('');
input('pression qualquer tecla...'); disp(' ');

% polyval(Polinomio,Intervalo)
% retorna os valores do polinônimo no intervalo especificado
X = -1.5:.01:0.5;
plot(X,polyval(Q,X)); 
grid on; hold on;
R = roots(Q);
scatter(R,polyval(Q,R),'o','filled','b');
xlabel('x'); ylabel('Q(x)');
set(gca,'FontSize',18);

% soma e subtracao de vetores
% os vetores precisam ter o mesmo numero de elementos
disp('p(x)+q(x)'); disp(P+[0 Q]); disp('');
disp('p(x)-q(x)'); disp(P-[0 Q]); disp('');
input('pression qualquer tecla...'); disp(' ');

% multiplicação de polinômios (convolução)
disp('p(x)*q(x)');
%----------------
% P(x) = ax2 + bx + c
% C(x) = dx2 + ex + f
%----------------
% P(x)*C(x)
%----------------
% x4 x3 x2 x1 x0 
%----------------
% ad ae af
%    bd be bf
%       cd ce cf
%----------------
%       a b |c|
%           |f| e d
%           
%       a |b c|    
%         |f e| d
%         
%       |a b c|
%       |f e d|
%       
%       |a b| c
%     f |e d|
%    
%       |a| b c
%   f e |d|    
%----------------
conv(P,Q)
     
% divisão de polinòmios
disp('p(x)/q(x)');
[q,r]=deconv(P,Q);
disp('quociente'); disp(q);
disp('resto'); disp(r);
disp('');

