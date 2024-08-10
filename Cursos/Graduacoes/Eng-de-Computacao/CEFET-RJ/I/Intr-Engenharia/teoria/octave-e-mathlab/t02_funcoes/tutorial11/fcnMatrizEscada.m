function [G,N] = fcnMatrizEscada(A)
% ----------------------------------------------------------------
% CEFET/RJ - UNED PETROPOLIS - ENGENHARIA DE COMPUTACAO
% ALGEBRA LINEAR - PROF. RAFAEL SARAIVA CAMPOS - 2014/02
% ----------------------------------------------------------------
% A - matriz ampliada do sistema
% G - matriz escalonada
% N - numero de operações para obtencao da matriz G 
% (multiplicação por escalar, soma de linhas)
% ----------------------------------------------------------------
[l,c]=size(A);
N=0;
G=A;

for k=1:l
    
    for i=k:l
       
        G(i,:)=G(i,:).*(abs(G(i,:))>10^(-12)); % roundoff
        v = find(G(i,:)); % finds non-zero elements on the current line
        isemptyv = isempty(v);
                
        if(~isemptyv)
            if(G(i,v(1))~=1)
                N=N+1;            
                G(i,:)=G(i,:)./G(i,v(1)); % scalar multiplication
            end;
        end;
        
        if(~isemptyv)
        
            if(i==k)
                MARK=v(1);
            end;    
        
            if((i>k)&&(v(1)==MARK))
                % lines subtraction
                G(i,:)=G(i,:)-G(k,:);
                N=N+1;
            end;    
        
        end;
    
    end;
end;

% --- line switching ---
S = sum(G,2);
P = find(S);

if (length(P)<l)
    
    for i=1:length(P)
       G(i,:)=G(P(i),:);
    end;    

    for i=length(P)+1:l
       G(i,:)=zeros(1,c);
    end;

end;    
   

