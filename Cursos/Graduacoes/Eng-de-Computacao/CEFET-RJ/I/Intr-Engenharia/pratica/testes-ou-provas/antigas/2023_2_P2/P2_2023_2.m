clearvars; clc;

S = [1 1];
k = length(S)+1;
for i=1:4
  S(k)=S(k-1)+S(k-2);
  k = k+1;
end
z1 = 5 + 3*j;
z2 = 1 + j;

S*S'
rad2deg(angle(z2))
sum(S)
S(k-1)
sum(S.^0)
real(z1)*imag(z2)
S(i)
z2*conj(z2)
angle(z2)>angle(z1)
abs(z2)>abs(z1)









