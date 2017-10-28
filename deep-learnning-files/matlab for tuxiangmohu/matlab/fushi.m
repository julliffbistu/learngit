I1=imread('pinpuyuchuli..jpg');
SE=strel('square',3);%形态学结构元素？？？
I2=imerode(I1,SE); %erode腐蚀函数I2是我要处理的二值图
imshow(I1);
figure;imshow(I2);