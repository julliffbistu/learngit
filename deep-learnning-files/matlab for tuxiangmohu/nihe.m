clear all
I=imread('lena.bmp');
BW1=im2bw(I);     %��ͼ���ֵ��
imshow(I);
figure;
imshow(BW1);
[m,n]=find(BW1==1);
% pos=[m';n'];
% 
% 
% num=size(m,1)%�������ɫ��ĸ���
%  num1=size(I);%�����ԭͼ�Ĵ�С
%   k=zeros(num1(1),num1(2));%�������ԭ��ͼƬһ����С�ľ���
% for ii=1:num
% k(m(ii),n(ii))=I(m(ii),n(ii));%�Ѷ�ֵͼ���а�ɫ�������λ�ã�������ԭ��ͼƬ��ȥ
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

