%Mean value of two images
im1=imread("einstein.jpg");
im1=rgb2gray(im1);
im1=im2double(im1);
im2=imread("cameraman.tif");
im2=im2double(im2);
im1=imresize(im1,size(im2));
r=size(im1,1);
c=size(im1,2);
new_img=zeros(size(im1));
for i=1:r
    for j=1:c
        new_img(i,j)=(im1(i,j)+im2(i,j))/2;
    end
end
subplot(131)
imshow(im1);
title("Image1");
subplot(132)
imshow(im2);
title("Image2");
subplot(133)
imshow(new_img);
title("Final Image");