im1=imread("tom1.jpg");
im2=imread("jerry1.jpg");
im2=imresize(im2,[size(im1,1) size(im1,2)]);
res=imadd(im2,im1);
subplot(131);
imshow(im1);
title("Image 1");
subplot(132);
imshow(im2);
title("Image 2");
subplot(133);
imshow(res);
title("Addition of Image1 and Image2");
imwrite(res,"im_add.tif");