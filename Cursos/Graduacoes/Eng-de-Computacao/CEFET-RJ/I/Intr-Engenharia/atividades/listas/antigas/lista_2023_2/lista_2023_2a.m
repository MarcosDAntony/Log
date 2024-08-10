clearvars; clc;


A=[1 2 3;4 5 6;7 8 9]

sum(A(:,2:3))(2)
trace(A)
sum(size(triu(A)))
sum(sum(tril(A)))

S = 0; P = 1; Q = 2;
for i=1:2:10
  if(mod(i,2)==0)
    S = S + i;
  elseif(i<5)
    P = P*i;
  else
    Q = Q + 1;
  endif
endfor
S
P
Q

i=1;j=2;k=0; m=0;
while((i<=j)||(k==0))
  i=i+1;
  k=i;
  m=m+1;
endwhile
i
k
m



