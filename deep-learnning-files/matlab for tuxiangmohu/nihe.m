clear all
I=imread('lena.bmp');
BW1=im2bw(I);     %对图像二值化
imshow(I);
figure;
imshow(BW1);
[m,n]=find(BW1==1);
% pos=[m';n'];
% 
% 
% num=size(m,1)%计算出白色点的个数
%  num1=size(I);%计算出原图的大小
%   k=zeros(num1(1),num1(2));%构造出与原来图片一样大小的矩阵
% for ii=1:num
% k(m(ii),n(ii))=I(m(ii),n(ii));%把二值图像中白色点坐标的位置，代换到原来图片中去
% %[a b]=polyfit(I(m(ii),n(ii)));
% end
% figure,imshow(k);
% x=pos(:,1);
% y=pos(:,2);
% [a,b]=linearfit(double(m),double(n)); 

p=polyfit(m,n,1);  
x1=linspace(min(m),max(m));  
y1=polyval(p,x1);  
plot(m,n,'*',x1,y1); 
K=y1/x1;
% 
%  b=polyfit(m,n);
% yy=a*x+b;
% plot(m,n,'.',x,yy)

