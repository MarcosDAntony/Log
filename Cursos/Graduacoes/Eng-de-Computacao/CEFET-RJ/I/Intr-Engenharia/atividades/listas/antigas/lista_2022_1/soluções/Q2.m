function M = Q2(A,i,j)
% --------------------------
%         (i-1,j)
% (i,j-1)  (i,j)   (i,j+1)
%         (i+1,j)
% --------------------------

  [L,C] = size(A);

  M = 0; % média aritmética dos vizinhos
  V = 0; % quantidade de vizinhos

  if(i>1)
    M = M + A(i-1,j);
    V = V+1;
  end

  if(i<L)
    M = M + A(i+1,j);
    V = V+1;
  end
 
  if(j>1)
    M = M + A(i,j-1);
    V = V+1;
  end

  if(j<C)
    M = M + A(i,j+1);
    V = V+1;
  end

  M = M/V;

end  
  

