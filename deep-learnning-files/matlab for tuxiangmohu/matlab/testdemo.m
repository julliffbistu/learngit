close all
clear
clc
rgb = imread('1.jpg');
figure,imshow(rgb);
r = rgb(:,:,1);
g = rgb(:,:,2);
b = rgb(:,:,3);
rl = 90;
gl = 150;
bl = 70;%可以再小一点

% blue = r<=rl & g<=gl & b>=bl;%figure,imshow(blue);
% oran = r>=(rl+50) & g<=(gl-50) & b<=(bl+50);%figure,imshow(oran);
% yell = r>=(rl+50) & g>=(gl-50) & b<=(bl+50);%figure,imshow(yell);

blue=r<=60&g<135&b>70;
oran=r>=65&g<=78&b<=120;
yell=r>=80&g>=75&b<=95;

yz = 300;%可以再大挺多
blueb = bwareaopen(blue,yz);figure,imshow(blueb);
oranb = bwareaopen(oran,yz);figure,imshow(oranb);
yellb = bwareaopen(yell,yz);figure,imshow(yellb);

