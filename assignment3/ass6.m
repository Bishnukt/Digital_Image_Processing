%Biwise or operation on two images

im1=imread("tom1.jpg");
im2=imread("jerry1.jpg");
im2=imresize(im2,[size(im1,1) size(im1,2)]);
res=bitor(im1,im2);
subplot(131);
imshow(im1);
title("im1");
subplot(132);
imshow(im2);
title("im2");
subplot(133);
imshow(res);
title("im1 OR im2");