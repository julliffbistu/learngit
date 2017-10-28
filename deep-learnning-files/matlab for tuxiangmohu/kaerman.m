clear all;

obj = VideoReader('1.mp4');%������Ƶλ��
numFrames = obj.NumberOfFrames;% ֡������
 for k = 150 : 180% ��ȡǰ15֡
frame = read(obj,k);%��ȡ�ڼ�֡
show_size=size(frame)              %��ʾ����ͼ��ߴ硣
figure(1);                  
imshow(frame);                  %��ʾ����ͼ��

d=imnoise(frame,'gaussian',0,0.001);    %�Ը���ͼ��Ӹ�˹��ɫ������
figure(2);
imshow(d);                          %��ʾ����ͼ��

[r1,c1]=size(d);   

imwrite(d,'lena2.bmp','bmp')    %д����ͼ�񡣱����ͼ���ļ�lena2.bmp
d=double(d)/255;     %unitת����double����

p=3;   %����������Э�����ʼֵ 
Q=0.25;     %���̰���Э���� 
R=0.25;     %�۲����Э����  
A=1;     %ϵͳ����
H=1;     %�۲����

f=d(1,:);  %��ȡ����ͼ���1�С���ʼ n=1��
   for n=2:r1  

    f=A*f';   %�����(n+1)�С���ʼ n+1=2 ��
    P=A*p*A'+Q;  %����������Э���
    K=P*H'*inv(H*P*H'+R);   %Kalman���档    
    F=f+K*(d(n,:)'-H*f);   
    P=(1-K*H)*p; 
    p=P;    
    f=F';   
    r(n,:)=f;       %��������ֵ  
    n
end;

r=im2uint8(r);
 end
 figure(3);
 imshow(r);
