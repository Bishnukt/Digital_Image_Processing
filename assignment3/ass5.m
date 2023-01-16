%Bitwise and on two images

im1=imread("im_add.tif");
im2=imread("tom1.jpg");
subplot(131);
imshow(im1);
title("im1");
subplot(132);
imshow(im2);
title("im2");
subplot(133);
res=bitand(im1,im2);
imshow(res);
title("im1 & im2");