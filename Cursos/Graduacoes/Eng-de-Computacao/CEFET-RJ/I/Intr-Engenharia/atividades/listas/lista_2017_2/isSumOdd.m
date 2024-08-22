function [s]=isSumOdd(x,y)
    
    if(x==y)
        % retorna -1 casos os numeros sejam iguais
        s=-1; 
    else
        % a soma eh impar se o resto da divisao por 2 nao for nulo            
        if(mod(x+y,2)~=0)
            s=1;
        else
            s=0;
        end;    
    end;
            