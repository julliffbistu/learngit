I=imread('2.jpg');
x=rgb2gray(I);
figure(1);
subplot(1,2,1);
imshow(I);
title('ԭʼͼ��');
subplot(1,2,2);
imshow(x);
title('�Ҷ�ͼ��');