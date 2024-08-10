% =====================================================
% CEFET-RJ Campus Petropolis
% Faculdade de Engenharia de Computação
% GCOM1001PE - Introdução à Engenharia - 2022/1
% Prof. Rafael Saraiva Campos
% =====================================================
% Tutorial 9 - PDI (Processamento Digital de Imagens)
% =====================================================
clc; close all; clear;

pkg load image;

% carrega imagem original
RGB = imread('img1.bmp');

% converte de RGB para níveis de cinza
BW = rgb2gray(RGB);

% aplica filtro de mediana
Filtered = medfilt2(BW,[5 5]);

% converte em imagem binária utilizando método de Otsu para identificação
% de limiar de thresholding

nlin = size(Filtered,1);
ncol = size(Filtered,2);
Binary = zeros(nlin,ncol);
LIMIAR = 100;

for i=1:nlin
  for j=1:ncol
    if(Filtered(i,j)>LIMIAR)
      Binary(i,j)=1;
    end;
  end;
end;

% preenche buracos em uma imagem binária - um buraco em uma imagem
% é um conjunto de pixels não conectado  a pixels de "background"
% na borda da imagem.
Filled = imfill(Binary,'holes');

subplot(2,4,1); imshow(RGB); title('(a) RGB Original');
subplot(2,4,2); imshow(BW); title('(b) Escala de cinza');
subplot(2,4,3); imshow(Filtered); title('(c) Após aplicar filtro de mediana');
subplot(2,4,4); imshow(Binary); title('(d) Imagem binária');
subplot(2,4,5); imshow(Filled); title('(e) Após preenchimento');

% rotula os objetos na imagem
Labeled = bwlabel(Filled);

% retorna propriedades morfologicas dos objetos da imagem
STATS = regionprops(Labeled,'all');

% número de objetos na imagem
N = unique(length(STATS));

% centróides dos objetos
centroids = cat(1, STATS.Centroid);

% exibe os rótulos junto aos objetos
subplot(2,4,6); imshow(Filled); hold on;
for i=1:N
    text(centroids(i,1), centroids(i,2) , int2str(i),'Color','r');
end;
title('(f) Objetos rotulados');

% calcula e exibe a métrica de curvatura
subplot(2,4,7); imshow(Filled); hold on; k=0;
for i=1:N
    metric = 4*pi*STATS(i).Area/STATS(i).Perimeter/100;
    text(centroids(i,1), centroids(i,2) , num2str(metric),'Color','r');
    disp(abs(metric-1));
    if(abs(metric-1)<=.15)
        k=k+1;
        idx(k)=i;
    end;
end;
title('(g) Métrica de curvatura');

% marca os objetos aproximadamente circulares
subplot(2,4,8); imshow(Filled); hold on;
for i=1:length(idx)
    scatter(centroids(idx(i),1),centroids(idx(i),2),'Marker','o','MarkerFaceColor','r');
end;
title('(h) Objetos quase circulares identificados');


