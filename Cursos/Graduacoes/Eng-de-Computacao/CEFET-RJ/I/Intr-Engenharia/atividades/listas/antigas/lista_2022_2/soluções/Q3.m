clearvars; clc; close all;

a = 3; x1 = 0; D = 0.1; x2 = 2;

x = x1:D:x2;

subplot(1,2,1); plot(x,a.^x,'r'); grid on;
subplot(1,2,2); plot(x,x.^a,'b'); grid on;

