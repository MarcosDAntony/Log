function C = Q1(A,B)  
  nA = length(A);
  nB = length(B);  
  if((A(1)~=nA-1)||(B(1)~=nB-1))
      disp('O 1o elemento do vetor nao indica o numero correto de elementos!');
      C=-1;
      return;
  end;  
  I = intersect(A(2:nA),B(2:nB));
  n = length(I);
  C(1) = n;
  C(2:n+1) = I;  
end  


  