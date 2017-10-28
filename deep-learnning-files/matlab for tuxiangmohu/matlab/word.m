
clear all



j1=imread('mohu3.jpg');
figure;imshow(j1);
f1=rgb2gray(j1);
f1=im2double(f1);
h = fspecial('Sobel');   %Sobel算子
J = conv2(f1,h,'same');  %Sobel算子微分 
IP=abs(fft2(J));  %图像能量谱密度
S=fftshift(real(ifft2(IP)));
figure,plot(min(S)); title('自相关图');
