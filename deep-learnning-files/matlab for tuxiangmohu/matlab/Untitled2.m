I=imread('1.jpg');
f=rgb2gray(I);
f1=im2bw(f,200/255);
BW1=double(f1); 
BW=edge(BW1,'sobel',0.4);
r_max=50;
r_min=10;step_r=10;step_angle=pi/12;p=0.7;
[m,n] = size(BW);
size_r = round((r_max-r_min)/step_r)+1;
size_angle = round(2*pi/step_angle); 
hough_space = zeros(m,n,size_r);
[rows,cols] = find(BW);
ecount = size(rows);
for i=1:ecount  for r=1:size_r    for k=1:size_angle 
a = round(rows(i)-(r_min+(r-1)*step_r)*cos(k*step_angle));
b = round(cols(i)-(r_min+(r-1)*step_r)*sin(k*step_angle));
if(a>0&&a<=m&&b>0&&b<=n)
    hough_space(a,b,r) = hough_space(a,b,r)+1;
end
        end
    end
end
max_para = max(max(max(hough_space)));
index = find(hough_space>=max_para*p); 
length = size(index);
hough_circle = false(m,n); 
for i=1:ecount   for k=1:length    par3 = floor(index(k)/(m*n))+1;
        par2 = floor((index(k)-(par3-1)*(m*n))/m)+1;
        par1 = index(k)-(par3-1)*(m*n)-(par2-1)*m; 
        if((rows(i)-par1)^2+(cols(i)-par2)^2<(r_min+(par3-1)*step_r)^2+5&&(rows(i)-par1)^2+(cols(i)-par2)^2>(r_min+(par3-1)*step_r)^2-5)
hough_circle(rows(i),cols(i)) = true;
        end
    end
end
for k=1:length    par3 = floor(index(k)/(m*n))+1; 
    par2 = floor((index(k)-(par3-1)*(m*n))/m)+1; 
    par1 = index(k)-(par3-1)*(m*n)-(par2-1)*m;
    par3 = r_min+(par3-1)*step_r;
    fprintf(1,'Center %d %d radius %d\n',par1,par2,par3);
    para(:,k) = [par1,par2,par3];
end
subplot(221),imshow(f);
subplot(222),imshow(BW);
subplot(223),imshow(hough_circle)