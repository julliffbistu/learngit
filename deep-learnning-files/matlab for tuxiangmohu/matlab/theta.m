clear all

j=imread('mohu2.jpg');
J=rgb2gray(j);
K=fft2(J);%����Ҷ�任???
M=fftshift(K);%ֱ�������Ƶ�Ƶ������
N=abs(M);%����Ƶ�׷�ֵ?
P=(N-min(min(N)))/(max(max(N))-min(min(N)))*225;%��һ��?
figure,imshow(P);
title('����Ҷ�任Ƶ��');

J1=rgb2gray(j);
K1=fft2(J1);%����Ҷ�任    
M1=fftshift(K1);%ֱ�������Ƶ�Ƶ������ 
N1=abs(M1);%����Ƶ�׷�ֵ  
P1=(N1-min(min(N1)))/(max(max(N1))-min(min(N1)))*225;%��һ�� 
figure,imshow(P1); 
title('����Ҷ�任Ƶ��2');