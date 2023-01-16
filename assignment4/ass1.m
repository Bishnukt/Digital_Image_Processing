%Translation

img=imread("cameraman.tif");
translated_img=imtranslate(img,[20,30]);
subplot(1,2,1);
imshow(img);
title("Original Image");
subplot(1,2,2);
imshow(translated_img);
title("Translated Image");

