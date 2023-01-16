%Flip any image without using any built in function

img=imread("lenna.bmp");
subplot(1,3,1);
imshow(img);
title("Original Image");
[r,c,z]=size(img);
i=1;
for j=c:-1:1
    img_flp(:,i,:)=img(:,j,:);
    i=i+1;
end
subplot(1,3,2);
imshow(img_flp);
title("Flipped Image");

%Upside down image
i=1;
for j=r:-1:1
    img_rot(i,:,:)=img(j,:,:);
    i=i+1;
end
subplot(1,3,3);
imshow(img_rot);
title("Upside Down Image");