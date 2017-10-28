obj = VideoReader('1.mp4');%输入视频位置
numFrames = obj.NumberOfFrames;% 帧的总数
 for k = 1 : 30% 读取前15帧
     frame = read(obj,k);%读取第几帧
    % imshow(frame);%显示帧
    
      imwrite(frame,strcat('D:\\',num2str(k),'.jpg'),'jpg');% 保存帧
 end