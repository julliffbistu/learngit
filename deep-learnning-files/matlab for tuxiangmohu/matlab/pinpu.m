I=imread('mohu2.jpg');  %读入原图像文件
I=rgb2gray(I);
 J = fft2(I);%这里对图像进行了快速傅里叶变换。
 figure,imshow(I);
  J = fftshift(J)
  figure,imshow(log(abs(J)),[]);title('pinputu');
  
  
   J(abs(J)<5000)=0;
     figure,imshow(log(abs(J)+eps),[]);title('tuxiang')
       J = ifftshift(J)
       K = ifft2(J)
       figure,imshow(K,[0 255]);
       
       
       