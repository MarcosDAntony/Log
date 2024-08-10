function decodificaMsg(dicionario,inputFile,outputFile)
%===================================
% CEFET/RJ - CAMPUS PETRÓPOLIS
% GRADUAÇÃO EM ENGENHARIA DE COMPUTAÇÃO
% GCOM1001PE - Introdução à Engenharia
% PROF. RAFAEL SARAIVA CAMPOS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplicação #4: criptografia simples (cifra do livro)
%===================================
% função decodificaMsg
% parâmetros de entrada
%   dicionario - o dicionario criado com a funcao criaDicionario
%   inputFile - nome do arquivo com a mensagem a ser codificada
%   outputFile - nome do arquivo de saída para a mensagem codificada
%===================================
% número de dígitos por caracter na codificacao
DIG = length(num2str(length(dicionario))); 

fin = fopen(inputFile,'r');
if(fin>0)
  fout = fopen(outputFile,'w');
  if(fout>0)  
    while(~feof(fin))  
      % le a linha atual da mensagem codificada
      cmsg = fgetl(fin);   
      rmsg='';
      for i=1:DIG:length(cmsg)
        rmsg = cat(2,rmsg,dicionario(str2num(cmsg(i:i+DIG-1))));
      end;  
      % escreve linha decodificada no arquivo de saída
      fputs(fout,rmsg);  
      fputs(fout,newline);      
    end;  
  else
    disp(fout);
    return;      
  end;      
else
  disp(fin);
  return;
end;
  