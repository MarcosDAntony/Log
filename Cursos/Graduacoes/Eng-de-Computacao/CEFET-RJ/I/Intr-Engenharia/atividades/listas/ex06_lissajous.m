clearvars; clc; close all;

a=1:.1:15;
b=2:.1:16;

A=B=1;
t=-pi:pi/200:pi;
n = length(t);

for k=1:length(a)
  
  %subplot(2,3,k);
  
  x = @(t)(A*sin(a(k)*t));
  y = @(t)(B*sin(b(k)*t)); 
  
  plot(x(t),y(t));
    
  xlim([-max(A,B) max(A,B)]);
  ylim([-max(A,B) max(A,B)]);
  pbaspect([1 1 1]);
  pause(.0001);
  
endfor  

