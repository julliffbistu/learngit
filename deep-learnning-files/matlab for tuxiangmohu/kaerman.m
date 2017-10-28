clear all;

obj = VideoReader('1.mp4');%输入视频位置
numFrames = obj.NumberOfFrames;% 帧的总数
 for k = 150 : 180% 读取前15帧
frame = read(obj,k);%读取第几帧
show_size=size(frame)              %显示给定图像尺寸。
figure(1);                  
imshow(frame);                  %显示无噪图像。

d=imnoise(frame,'gaussian',0,0.001);    %对给定图像加高斯白色噪声。
figure(2);
imshow(d);                          %显示加噪图像。

[r1,c1]=size(d);   

imwrite(d,'lena2.bmp','bmp')    %写加噪图像。保存成图像文件lena2.bmp
d=double(d)/255;     %unit转换成double类型

p=3;   %先验误差估计协方差初始值 
Q=0.25;     %过程白噪协方差 
R=0.25;     %观测白噪协方差  
A=1;     %系统矩阵。
H=1;     %观测矩阵。

f=d(1,:);  %读取加噪图像第1行。开始 n=1。
   for n=2:r1  

    f=A*f';   %先验第(n+1)行。开始 n+1=2 。
    P=A*p*A'+Q;  %先验误差估计协方差。
    K=P*H'*inv(H*P*H'+R);   %Kalman增益。    
    F=f+K*(d(n,:)'-H*f);   
    P=(1-K*H)*p; 
    p=P;    
    f=F';   
    r(n,:)=f;       %保存像素值  
    n
end;

r=im2uint8(r);
 end
 figure(3);
 imshow(r);
