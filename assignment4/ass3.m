%Rotation

img=imread("cameraman.tif");
val=input("Enter the rotation degree- ");
img_rot=imrotate(img,val);
subplot(1,2,1);
imshow(img);
title("Original Image");
subplot(1,2,2);
imshow(img_rot);
title("Image rotated by "+val+" degrees");
