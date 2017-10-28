clear;
rgb=imread('mohu.jpg');
c=rgb(122,122);
imshow(rgb);

d=diff(rgb);
figure;
imshow(d);

point=d(122,122);
% A1=[-1-2*sint(t)+2*cos(t)+4*sin(t)*cos(t) -2*cos(t)-4*sin(t)*cos(t) 0;2+2*sin(t)-4*cos(t)-4*sin(t)*cos(t) 4*cos(t)+4*sin(t)*cos(t) 0;-1 0 0]
d=rgb(122,122)*[-1-2*sint(t)+2*cos(t)+4*sin(t)*cos(t) -2*cos(t)-4*sin(t)*cos(t) 0;2+2*sin(t)-4*cos(t)-4*sin(t)*cos(t) 4*cos(t)+4*sin(t)*cos(t) 0;-1 0 0];



% x=0:0.05:2*pi;
% y=sin(x);
% plot(x,y);
% hold on
% z=diff(y)/0.05;%Ïàµ±ÓÚdy/dx
% plot(x(1:125),z,'r');
% 
% 
% rgb(122',122')=[-1-2*sin(t)+2*cos(t)+4*sin(t)*cos(t)]*rgb(120,122)+[-2*cos(t)-4*sin(t)*cos(t)]*rgb(120,123)+[2+2*sin(t)-4*cot(t)-4*sin(t)*cos(t)]*rgb(121,122)+[4*cos(t)+4*sin(t)*cos(t)]*rgb(121,123);
