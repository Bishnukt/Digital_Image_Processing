%Scaling

img=imread("cameraman.tif");
%Scaling the image by factor of 2
img_res=imresize(img,0.5);
subplot(1,2,1);
imshow(img);
title("Original Image");
subplot(1,2,2);
imshow(img_res);
title("Scaled Image");
figure
imshow(img);
figure
imshow(img_res);
