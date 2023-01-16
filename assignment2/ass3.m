%Histogram of grayscale image

img=imread("cameraman.tif");
[r,c]=size(img);
arr=zeros(1,256);
m=1;
for i=1:r
    for j=1:c
        arr(m)=img(i,j);
        m=m+1;
    end
end
subplot(1,2,1)
imshow(img);
subplot(1,2,2)
histogram(arr);