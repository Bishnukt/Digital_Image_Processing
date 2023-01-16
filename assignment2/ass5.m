img_light=imread("light3.tif");
img_dark=imread("dark3.tif");
img_high=imread("high3.tif");
ar_l=zeros(1,256);
ar_d=zeros(1,256);
ar_h=zeros(1,256);
[r,c]=size(img_light);
for i=1:r
    for j=1:c
        m=img_light(i,j);
        ar_l(m+1)=ar_l(m+1)+1;
        m=img_dark(i,j);
        ar_d(m+1)=ar_d(m+1)+1;
        m=img_high(i,j);
        ar_h(m+1)=ar_h(m+1)+1;
    end
end
subplot(2,3,1)
imshow(img_light);
title("Low Contrast Light");
subplot(2,3,2)
imshow(img_dark);
title("Low Contrast Dark");
subplot(2,3,3)
imshow(img_high);
title("High Contrast");
subplot(2,3,4)
imhist(img_light);
subplot(2,3,5)
imhist(img_dark);
subplot(2,3,6)
imhist(img_high);