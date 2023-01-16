%Intersection of two images

im1=imread("im_add.tif");
im2=imread("tom1.jpg");
im1=rgb2gray(im1);
im2=rgb2gray(im2);
subplot(131);
imshow(im1);
title("im1");
subplot(132);
imshow(im2);
title("im2");

r=size(im1,1);
c=size(im1,2);
res=uint8(zeros(r,c));

for i=1:r
    for j=1:c
        if im1(i,j)==im2(i,j)
            res(i,j)=im1(i,j);
        end
    end
end
subplot(133);
imshow(res);
title("Intersection");