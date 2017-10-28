I=imread('2.jpg');
subplot(1,2,1)
imshow(I);
MotionBlur=im2double(I);
% 
% LEN=30;
% THETA=45;
PSF=fspecial('motion',100,200);
% MotionBlur=imfilter(I,PSF);
% subplot(1,2,2)
% imshow(MotionBlur);
k=deconvlucy(MotionBlur,PSF,5)
n=deconvlucy(MotionBlur,PSF,10)
M=deconvlucy(MotionBlur,PSF,15)
figure;
subplot(1,3,1);imshow(k);
subplot(1,3,2);imshow(n);
subplot(1,3,3);imshow(M);