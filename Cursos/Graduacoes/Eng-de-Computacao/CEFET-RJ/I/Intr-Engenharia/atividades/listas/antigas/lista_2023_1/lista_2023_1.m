clearvars; clc; close all

function pascal(N,space)

  printf(strcat('%',num2str(space),'d'),1); printf('\n');
  printf(strcat('%',num2str(space),'d'),[1 1]); printf('\n');
  pLine=[1 1];

  for i=2:N
    cLine(1)=1;
    cLine(i+1)=1;
    for j=2:i
      cLine(j)=pLine(j)+pLine(j-1);
    endfor
    printf(strcat('%',num2str(space),'d'),cLine);
    printf('\n');
    pLine=cLine;
  endfor

endfunction

function P = chaos(a,p0,N)

  P(1)=p0;
  for i=2:N
    P(i)=a*P(i-1)*(1-P(i-1));
  endfor

endfunction

function D=divisores(n)
  k=1;
  for i=1:floor(sqrt(n))
    if(mod(n,i)==0)
      D(k)=i;
      D(k+1)=n/i;
      k=k+2;
    end;
  end;
  D = sort(D);
end

function p = isperfect(n)
    D = divisores(n);
    if(sum(D(1:length(D)-1))==n)
      p=1;
    else
      p=0;
    end;
end

function R = myFunc3(n)
  if(floor(n)~=n)
    R=-1;
  elseif(isprime(n))
    R=1;
  elseif(isperfect(n))
    R=2;
  else
    R=0;
  end
end

function M = myFunc4(V)
  N = length(V);
  M(1) = sum(V)/N;
  M(2) = prod(V)^(1/N);
endfunction

% [1]
pascal(15,6);

% [2]
N = 15; a = 3.9;
plot(chaos(a,0.2,N),'LineWidth',2,'Color','k');
hold on; grid on;
plot(chaos(a,0.29,N),'LineWidth',2,'Color','r');
set(gca,'Fontsize',18);
xlim([1 N]);
legend('P_0=0.2','P_0=0.29','Location','southeast');
title('Questao 2');

% [3]
disp(myFunc3(21));

% [4]
disp(myFunc4([2 3 4.5 10 1]));

% [5]
P = [1 2;3 4;-1 -2];
figure;
n = size(P,1);
quiver(zeros(n,1),zeros(n,1),P(:,1),P(:,2),1);
grid on;


