
clear all



j1=imread('mohu3.jpg');
figure;imshow(j1);
f1=rgb2gray(j1);
f1=im2double(f1);
h = fspecial('Sobel');   %Sobel����
J = conv2(f1,h,'same');  %Sobel����΢�� 
IP=abs(fft2(J));  %ͼ���������ܶ�
S=fftshift(real(ifft2(IP)));
figure,plot(min(S)); title('�����ͼ');
