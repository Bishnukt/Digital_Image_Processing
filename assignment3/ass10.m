im1=imread("nature.jpg");
im2=imread("tom1.jpg");
im3=imread("jerry1.jpg");
im1=imresize(im1,[size(im2,1) size(im2,2)]);
im3=imresize(im3,[size(im2,1) size(im2,2)]);
obj=im2+im3;
white_img=uint8(ones(size(im2)));
mask=white_img./obj;
x=uint8(mask&im1);
finalimg=(im1.*x)+obj;
subplot(221)
imshow(im2);
title("Image1");
subplot(222)
imshow(im3);
title("Image2")
subplot(223)
imshow(im1);
title("Background");
subplot(224)
imshow(finalimg);
title("Final Image")