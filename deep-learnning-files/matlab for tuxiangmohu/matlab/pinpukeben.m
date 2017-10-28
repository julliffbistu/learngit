close all;

I=imread('mohu2.jpg');
J= rgb2gray(I);
k=fft2(J);
K=fftshift(k);
L=abs(K/256);

% figure;
% imshow(I);
% figure;
% imshow(uint8(L));
% % title('pinputu');

M=uint8(L);
i2=im2bw(M);
% figure;
% imshow(i2);title('erzhihua')

[m,n]=find(i2==1);%找出二值图片中白色的点。


for i=1:1:427
    for j=210:220
     i2(j,i)=0;
    end
end
[m,n]=find(i2==1);
figure;
imshow(i2);title('waawwqa')

%         
% for m=1:400;
%     for n=1:400;
%         if i2(m/2,:)==1;
%             i2(m/2,:)=0;
%         else i2(:,n/2)=0;
%             
%         end
%     end
% end;
% figure;
% imshow(i2);title('end')

%  pos=[m';n'];%把对应白色点的坐标存放到POS中，第一行对应第i个坐标的x，第二行对应第i个坐标的y，
%  num=size(m,1)%计算出白色点的个数
%  k=zeros(num1(1),num1(2));%构造出与原来图片一样大小的矩阵

% for ii=1:num
% k(m(ii),n(ii))=I(m(ii),n(ii));%把二值图像中白色点坐标的位置，代换到原来图片中去
% end
% figure,imshow(k);title('K')

p=polyfit(m,n,1);
x1=linspace(min(m),max(m));
y1=polyval(p,x1);
plot(m,n,'*',x1,y1);title('quxian');
K=y1/x1;



% 
% subplot(1,2,1);
% imshow(L);
% title('yuanshituxiang');
% theta = 0:180;
% [R,xp] = radon(L,theta);
% subplot(1,2,2);
% imagesc(theta,xp,R);
% title('radon bianhuan');
% colormap(hot);
% colorbar;