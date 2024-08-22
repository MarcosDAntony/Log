function [F]=FATORIAL(n)

    if(n==0)
        F=1; % o fatorial de 0 eh igual a 1      
    elseif(((n/floor(n))==1)&&(n>=0)) % se for inteiro positivo
        F=n*FATORIAL(n-1); % chama a funcao recursivamente
    else
        F=-1;
    end;
