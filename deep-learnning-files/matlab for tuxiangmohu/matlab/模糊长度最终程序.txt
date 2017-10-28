clear all
j=imread('2.jpg'); 
% figure(1),imshow(j);  
title('原图像');

len=90;
theta=30;
psf=fspecial('motion',len,theta);
j1=imfilter(j,psf,'circular','conv');
% figure,imshow(j1);
title('PSF模糊图像');

f1=rgb2gray(j1);  
f1=im2double(f1); 
h = fspecial('Sobel'); %Sobel算子
J = conv2(f1,h,'same');  %Sobel算子微分 
IP=abs(fft2(J));  %图像能量谱密度  
S=fftshift(real(ifft2(IP)));
figure,plot(S);
h=plot(S);
% h2=rgb2gray(h);
% h3=ib2w(double(h));
% figure;
% imshow(h3);
y=get(h,'ydata');
x=get(h,'xdata');

% axis on
xlabel('X');  
ylabel('Value');
title('自相关图'); %图像自相关函数

[max_a,index]=max(S,[],2);
[min_a,index]=min(S,[],2);

sum=max_a+min_a;

figure;plot(sum);title('zuizhiqiuhe');


[min_a2,index2]=min(sum);

index2;
indexlen=abs(index2-226)*2




% if index2>=225
%     index2
% else
%    [min_a2,index3]=min(sum);
%    index3
% end

% % suma=[];
% % for j=1:451
% %     for i=1:400
% %         a=0;a=a+S(j,i);
% %     end
% %     a
% % %     suma=[];
% %     suma(1,j)=a;
% % end
% %  plot(suma);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%极值求解法%%%%%%%%%%%%%%%%%%%
% IndMin=find(diff(sign(diff(S)))>0)+10;
%  IndMax=find(diff(sign(diff(S)))<0)+10;
%  figure; hold on; box on;
%  plot(1:length(S),S);
% % plot(IndMin,S(IndMin),'r^')
% % plot(IndMax,S(IndMax),'k*')
% legend('曲线','波谷点','波峰点')
% title('计算离散节点的波峰波谷信息', 'FontWeight', 'Bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%极值求解法%%%%%%%%%%%%%%%%%%%

% b=sum(S);
% figure;
% plot(b);title('qiuhe')
