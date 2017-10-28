% I=zeros(100,100);
% I(25:75,25:75)=1;
% %I=imread('pinpuyuchuli..jpg');
% subplot(1,2,1);
% imshow(I);
% title('yuanshituxiang');
% theta = 0:179;
% [R,xp] = radon(I,theta);
% 
% %R = radon(I,theta);
% 
% 
% subplot(1,2,2);
% imagesc(theta,xp,R);
% title('radon bianhuan');
% colormap(hot);
% colorbar;
iptsetpref('ImshowAxesVisible','on')
I = zeros(100,100);
I(25:75, 25:75) = 1;
theta = 0:180;
[R,xp] = radon(I,theta);
imshow(R,[],'Xdata',theta,'Ydata',xp,...
            'InitialMagnification','fit')
xlabel('\theta (degrees)')
ylabel('x')
colormap(hot), colorbar
iptsetpref('ImshowAxesVisible','off')

