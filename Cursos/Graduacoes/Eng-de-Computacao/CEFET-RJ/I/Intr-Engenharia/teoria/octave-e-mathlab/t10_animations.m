clearvars; clc; close all;

# -----------
# ANIMATION 1
# -----------
x = -2*pi:.025:2*pi;
n = length(x);

#y = @(x)(30+(4*x.^3-x.^2).*sin(2*x.^2+x-4));
y =@(x)(sin(x));
MIN = min(y(x));
MAX = max(y(x));
dx = 1e-8;

for i=1:4:n
    hold off;
    h = plot(x,y(x));
    a = (y(x(i)+dx)-y(x(i)))./dx;
    b = y(x(i))-a*x(i);
    title(num2str(a));
    hold on;
    plot(x,a*x+b,'k');
    ylim([MIN MAX]);
    xlim([x(1) x(n)]);
    pause(0.05);
    title(num2str(a));
endfor

# -----------
# ANIMATION 2
# -----------
figure();
t = 0.0:0.005:50;
alpha = 1.0;
h = plot (cos(t),sin(cos(t/alpha).*cos(t)));
axis([-1,1,-1,1],"manual")
for i=0:200
    alpha=1+i/800.;
    y=sin(cos(t/alpha).*cos(t));
    set(h,"YData",y);
    pause(0.1);
endfor


# -----------
# ANIMATION 3
# -----------
figure();
x = -2*pi:.025:2*pi;
n = length(x);
a = 4; b = 2; c=sqrt(a^2-b^2);
r = 0.05;

for i=1:4:n
    hold off;
    scatter(a*cos(x),b*sin(x),'.');
    x0 = -a*cos(x(i));
    y0 = b*sin(x(i));
    hold on;
    grid on;
    scatter(x0+r*cos(x),b*sin(x(i))+r*sin(x),'.');
    ylim([-b-r b+r]);
    xlim([-a-r a+r]);
    line([-c x0],[0 y0],"linestyle", "--", "color", "k");
    d = sqrt((x0+c)^2+y0^2);
    pause(0.025*d);
endfor
