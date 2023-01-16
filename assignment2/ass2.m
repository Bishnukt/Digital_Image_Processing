%Negative Image without use of any built in function

img=imread("lenna.bmp");
subplot(1,2,1)
imshow(img);
title("Original Image");
img2=255-img;
subplot(1,2,2);
imshow(img2);
title("Negative Image");