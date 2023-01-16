%Bitwise ex-or on two images

im1=imread("im_add.tif");
im2=imread("tom1.jpg");
res=bitxor(im1,im2);
subplot(131);
imshow(im1);
title("im1");
subplot(132);
imshow(im2);
title("im2");
subplot(133);
imshow(res);
title("im1 xor im2");