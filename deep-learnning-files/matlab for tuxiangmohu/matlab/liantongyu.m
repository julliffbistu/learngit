clear all;  
close all;  
clc;  
  
img=imread('3.jpg');  
imgn=img>128;  
s=uint8(1-imgn);  
  
%{                        
s=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;  
0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0;       %这个矩阵是维基百科中的矩阵  
1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0;  
0 0 1 1 1 1 0 0 0 1 1 1 1 0 0 0;  
0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 0;  
1 1 1 0 0 1 1 0 0 0 1 1 1 0 0 0;  
0 1 1 0 0 0 0 0 1 1 0 0 0 1 1 0;  
0 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0;  
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];  
%}  
thresh = graythresh(s);     %自动确定二值化阈值
s = im2bw(s,thresh);       %对图像二值化

imshow(s);  
[m n]=size(s);  
tmp=zeros(m,n);  
label=1;            %第一遍遍历时标记的标签数量  
for i=2:m  
    for j=2:n-1  
        up_left=s(i-1,j-1);             %原图像当前像素周围四个像素  
        up=s(i-1,j);  
        up_right=s(i-1,j+1);  
        left=s(i,j-1);  
        cur=s(i,j);  
          
        if cur==1  
            if cur~=up_left && cur~=up &&cur~=up_right &&cur~=left      %当前和四周的都不一样，加新标签  
                tmp(i,j)=label;  
                link{label}=[];  
                label=label+1;  
            else  
                t=sort([tmp(i,j-1) tmp(i-1,j-1) tmp(i-1,j) tmp(i-1,j+1)]);  %标签图像当前像素周围四个像素并排序           
                for k=1:4                   %寻找周围四个像素非零的最小值赋值给标签图像  
                    if t(k)~=0  
                        tmp(i,j)=t(k);  
                        for w=k:4  
                            link{t(w)}=union(t(k:4),link{t(w)});     %设置不相交集合                  
                        end  
                        break;  
                    end  
                end                    
            end             
        end  
          
    end  
end  
  
for i=1:m  
    for j=1:n  
        if s(i,j) ~=0  
            s(i,j)=find_set(link,tmp(i,j));  
        end  
    end  
end  
figure;
imshow(s)  
%imshow(mat2gray(s))  

