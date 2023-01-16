%Zooming

img = imread("trees.tif");
[m,n] = size(img);
f=input("Enter the zooming factor- ");
for i = 1:m
	for j = 1:n
		for k = 1:f
			img_zoomed((i-1)*f+k,(j-1)*f+k) = img(i,j);
		end
	end
end
subplot(1,2,1);
imshow(img);
title("Original Image");
subplot(1,2,2);
imshow(img_zoomed);
title("Zoomed Image");

