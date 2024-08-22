function eA = Q3d(A,k)  
  eA = eye(size(A,1));  
  for i=1:k
    eA = Q3a(eA,Q3b(1/factorial(i),Q3c(A,A^(i-1))));
  end;        
end  
  
  
  