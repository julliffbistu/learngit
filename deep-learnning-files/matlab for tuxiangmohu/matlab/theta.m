clear all

j=imread('mohu2.jpg');
J=rgb2gray(j);
K=fft2(J);%傅里叶变换???
M=fftshift(K);%直流分量移到频谱中心
N=abs(M);%计算频谱幅值?
P=(N-min(min(N)))/(max(max(N))-min(min(N)))*225;%归一化?
figure,imshow(P);
title('傅里叶变换频谱');

J1=rgb2gray(j);
K1=fft2(J1);%傅里叶变换    
M1=fftshift(K1);%直流分量移到频谱中心 
N1=abs(M1);%计算频谱幅值  
P1=(N1-min(min(N1)))/(max(max(N1))-min(min(N1)))*225;%归一化 
figure,imshow(P1); 
title('傅里叶变换频谱2');