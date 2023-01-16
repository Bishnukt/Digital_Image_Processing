%Constrast Stretching
img=imread("cameraman.tif");
m=input("Enter the value of m: ");
img_new=1./(1+(m./double(img)-eps).^10);
[r,c]=size(img);
% w1=50;
% w2=150;
% r1=80;
% r2=150;
% l=255;
% a=w1/r1;
% b=(w2-w1)/(r2-r1);
% g=(l-w2)/(l-r2);
% 
% for i=1:r
%     for j=1:c
%         if img_new(i,j)<=r1
%             r=img_new(i,j);
%         elseif img_new(i,j)>r1 && img_new(i,j)<=r2
%             r=img_new(i,j);
%             img_new(i,j)=(b*(r-r1))*w1;
%         else
%             r=img_new(i,j);
%             img_new(i,j)=(g*(r-r2))+w2;
%         end
%     end

subplot(2,2,1)
imshow(img);
title("Original Image");
subplot(2,2,2)
imshow(img_new);
title("After contrast stretching");

% img1=zeros(1,256);
% img2=zeros(1,256);
% 
% for i=1:r
%     for j=2:c
%         m=img(i,j);
%         img1(m)=img1(m)+1;
%         m=img_new(i,j);
%         img2(m)=img2(m)+1;
%     end
% end

subplot(2,2,3)
imhist(img);
subplot(2,2,4)
imhist(img_new);