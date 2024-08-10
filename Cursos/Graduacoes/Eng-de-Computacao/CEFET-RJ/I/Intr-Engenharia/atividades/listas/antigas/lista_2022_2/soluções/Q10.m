clearvars; clc; close all;

theta0 = 15:15:75;
n = length(theta0);
x = 0:5:80;
v0 = 40;
y0 = 0;
g = 9.8;

y = @(x,theta0,v0,y0)(tand(theta0).*x-(g*x.^2)./(2*(v0*cosd(theta0)).^2)+y0);

for i=1:n
  plot(x,y(x,theta0(i),v0,y0));
  hold on;
  legenda{i}=num2str(theta0(i));
endfor

grid on;
xlabel('x(m)');
ylabel('y(m)');
set(gca,'FontSize',18);
legend(legenda);



