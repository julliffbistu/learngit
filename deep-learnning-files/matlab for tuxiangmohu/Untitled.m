obj = VideoReader('1.mp4');%������Ƶλ��
numFrames = obj.NumberOfFrames;% ֡������
 for k = 1 : 30% ��ȡǰ15֡
     frame = read(obj,k);%��ȡ�ڼ�֡
    % imshow(frame);%��ʾ֡
    
      imwrite(frame,strcat('D:\\',num2str(k),'.jpg'),'jpg');% ����֡
 end