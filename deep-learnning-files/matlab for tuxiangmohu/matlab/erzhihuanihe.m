clear all

I=imread('erzhihuanihe.jpg');
I2=rgb2gray(I);
I3=im2bw(I2);
figure;
imshow(I3);

[m,n]=find(I3==1);%找出二值图片中白色的点。

p=polyfit(m,n,1);
x1=linspace(min(m),max(m));
y1=polyval(p,x1);
plot(m,n,'*',x1,y1);title('quxian');
K=y1/x1;
theta=(180/pi)*atan(K);
