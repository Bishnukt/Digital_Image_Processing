%Histogram equalization of image

im=imread("cameraman.tif");
% im=rgb2gray(im);
imshow(im);
[r,c]=size(im);
freq=zeros(256,1);
for i=1:r
    for j=1:c
        in=im(i,j);
        if in<=0
            freq(1,1)=freq(1,1)+1;    
        else 
            freq(in,1)=freq(in,1)+1;
        end
    end
end

tot=r*c;

pmf=freq/tot;
cdf=pmf;
for i=2:256
    cdf(i,1)=cdf(i,1)+cdf(i-1,1);
end

cdf=round(cdf*255);

res=im;
for i=1:r
    for j=1:c
        in=im(i,j);
        if(in<=0)
            in=1;
        end
        res(i,j)=cdf(in,1);
    end
end

imshow(res);
        
subplot(221)
imshow(im);
subplot(222)
imshow(res);
subplot(223)
imhist(im);
subplot(224)
imhist(res);