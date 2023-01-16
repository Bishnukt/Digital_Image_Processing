%Shrinking

img=imread("cameraman.tif");
f= input('Enter the scaling value for shrinking(value should be between [0 1]):');
img_shr=imresize(img,f);
subplot(1,2,1);
imshow(img);
title('Original Image');
subplot(1,2,2);
imshow(img_shr);
title('Shrinked Image');
