I=imread('mohu2.jpg');  %����ԭͼ���ļ�
I=rgb2gray(I);
 J = fft2(I);%�����ͼ������˿��ٸ���Ҷ�任��
 figure,imshow(I);
  J = fftshift(J)
  figure,imshow(log(abs(J)),[]);title('pinputu');
  
  
   J(abs(J)<5000)=0;
     figure,imshow(log(abs(J)+eps),[]);title('tuxiang')
       J = ifftshift(J)
       K = ifft2(J)
       figure,imshow(K,[0 255]);
       
       
       