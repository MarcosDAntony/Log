% =====================================================
% CEFET-RJ Campus Petropolis
% Faculdade de Engenharia de Computação
% GCOM1001PE - Introdução à Engenharia - 2022/1
% Prof. Rafael Saraiva Campos
% =====================================================
% Tutorial 8 - Manipulação de arquivos - Parte A
% (dlmread, dlmwrite, textscan)
% =====================================================
clc; close all; clear;

%--------------------------------------
% dlmread(FILE,SEP)
%--------------------------------------
C1_header = {'numero aluno','ano','semestre','media final'};
C1 = dlmread('GCOM2010PE.txt');
plot(C1(:,4)); grid on; 
legend(C1_header{4});
title('GCOM2010PE - Cálculo Int. e Dif. a Uma Variável');
set(gca,'YTick',0:10);
xlim([1 size(C1,1)]);

%--------------------------------------
% dlmwrite(FILE,M,SEP)
%--------------------------------------
idx = find(C1(:,4)>=7);
M = C1(idx,4);
figure;
plot(M,'Color','b','Marker','*');
xlim([1 length(M)]); ylim([7 10]);
title('MF dos alunos aprovados sem PF');
grid on;
dlmwrite('aprovados_direto.txt',C1(idx,:),';');

%--------------------------------------
% textscan(FILE,FORMAT)
%--------------------------------------
autompg_header ={'Milhas por galao','Cilindros','Deslocamento',...
    'Potencia(hp)','Peso','Aceleracao','Modelo(Ano)','Origem',...
    'Nome do modelo'};
  
fileID = fopen('auto-mpg.txt');

if(fileID>-1)
    autompg=textscan(fileID,'%f %f %f %f %f %f %f %f %q');
else
    disp('Arquivo nao encontrado!');
end;    

fclose(fileID);

nlins = size(autompg{1},1);
ncols = size(autompg_header,2);

disp('Numero de registros:');
disp(nlins);

while(1)
    disp('----------');    
    i=input('Selecione um registro (digite 0 para sair):');
    disp('----------');
    if((i>0)&&(i<=nlins))
        for j=1:ncols-1
            V = autompg{j};
            disp(strcat(autompg_header{j},':',num2str(V(i))));
        end;    
        disp(strcat(autompg_header{ncols},':',autompg{ncols}{i}));
    elseif(i==0)
        break;
    end;    
end;        

mpg = autompg{1};
hp = autompg{4};
acc = autompg{6};

figure;
subplot(1,2,1); 
plot(hp,'b'); 
grid on; hold on; 
plot(acc,'r');
legend('Potência','Aceleração');
xlim([1 nlins]);

subplot(1,2,2); 
plot(mpg,'k'); 
legend('Milhas por galão');
grid on;
xlim([1 nlins]);


