I1=imread('pinpuyuchuli..jpg');
SE=strel('square',3);%��̬ѧ�ṹԪ�أ�����
I2=imerode(I1,SE); %erode��ʴ����I2����Ҫ����Ķ�ֵͼ
imshow(I1);
figure;imshow(I2);