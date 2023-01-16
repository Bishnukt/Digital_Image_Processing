%Histogram of colour image

img=imread("lenna.bmp");
[x,y,z]=size(img);
% r=img;
% g=img;
% b=img;
% r(:,:,2)=0;
% r(:,:,3)=0;
% % imshow(r);
% g(:,:,1)=0;
% g(:,:,3)=0;
% % imshow(g);
% b(:,:,1)=0;
% b(:,:,2)=0;
ar=zeros(1,256);
ag=zeros(1,256);
ab=zeros(1,256);
for i=1:x
    for j=1:y
        m=img(i,j,1);
        ar(m)=ar(m)+1;
        m=img(i,j,2);
        ag(m)=ag(m)+1;
        m=img(i,j,3);
        ab(m)=ab(m)+1;
    end
end
subplot(2,2,1)
imshow(img);
subplot(2,2,2)
histogram(ar,'FaceColor','r');
subplot(2,2,3)
histogram(ag,'FaceColor','g');
subplot(2,2,4)
histogram(ab,'FaceColor','b');
% subplot(1,2,2)
% hold on
% histogram(ar,'FaceColor','r');
% histogram(ag,'FaceColor','g');
% histogram(ab,'FaceColor','b');
% hold off
