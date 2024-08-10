clc; close all; clearvars;
disp("Questão 1");
A = [1 2 3; 4 5 6; 0 0 0];
disp(sum(size(A))); % [1]
disp(trace(A)); % [2]
disp(sum (A(1,:))); % [3]
disp(sum (A)); % [5]
disp("");


disp("Questão 2");
msg = "eu_adoro_calculo_1";
x = -2;
if (length(msg) > 15);
  x = x + 1;
  m = mod(length(msg),5);
    else
    x = x + 1;
    m = 10;
  end;
  disp(x); % [6]
  disp(m );% [7]
  disp("");





disp("Questão 3");
s1 = (3 > 4)
s2 = (1 ~= 1);
if (s1 | s2)
  y = 1;
  z = floor(pi);
    else
    y = 0;
    z = ceil(pi);
  endif
  disp(y) % [8]
  disp(z) % [9]
  disp("");


disp("Questão 4");
B = eye(3);
C = [1 0 1;2 0 2];
D = B * transpose(C);
disp(sum (size(B))); % [10]
disp(trace (B)); % [11]
disp(sum(size(C))); % [12]
disp(sum(size(D))); % [13]
disp(D(1,:)); % [14]
disp(sum(D(:,2))); % [15]
disp("");


disp("Questão 5");
f = @(x,y)(x>=y);
g = @(x,y,z)(x^2+y^2+z^2);
f = (1,2) % [16]
g = (0,1,2) % [17]
f = (2,1) * g(0,0,1) % [18]
f = (1,1,1) ^(f(0,3)) % [20]


