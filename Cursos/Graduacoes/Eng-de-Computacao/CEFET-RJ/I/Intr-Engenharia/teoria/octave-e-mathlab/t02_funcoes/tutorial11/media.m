function [M] = media(nums,tipo,pesos)
% ---------------------------------------
% function media(nums,tipo,pesos)
% ---------------------------------------
% nums - vetor com os números cujo média deve ser calculada
% tipo - aritmetica, geometrica ou ponderada
% pesos - vetor com os pesos (no caso da média ponderada)
% ---------------------------------------

N = length(nums);

% a funcao STRCMP(STR1,STR2) retorna 1 se as strings STR1 e STR2 forem
% iguais; e retorna zero caso sejam diferentes
% o comando NARGIN retorna o numero de argumento de entrada da funcao
if((nargin<3)&&(strcmp(tipo,'ponderada')))
    disp('Eh necessario fornecer os pesos para o calculo da media ponderada!');
    M=[];
else   
    if(strcmp(tipo,'aritmetica'))
        M=sum(nums)/N;
    elseif(strcmp(tipo,'geometrica'))
        M=prod(nums)^(1/N);
    elseif(strcmp(tipo,'ponderada'))
        % verifica se a qtde de pesos eh igual à qtde de numeros    
        if(length(pesos)==N)
            M=sum(nums.*pesos)/sum(pesos);
        else
            disp('Quantidade de pesos diferente da quantidade de numeros!');
            M=[];
        end;
    end;
end;

end

