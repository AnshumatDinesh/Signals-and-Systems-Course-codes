clear all;
close all;
clc;
a=imread('vegetable.png');
h=0.1*ones(1,10); %filter1
h1=0.2*ones(1,20); %filter2
b=rgb2gray(a);
ol=[];
o=[];
suplot(2,3,1);
imshow(b);
title=('Original Image');
for i=1:512
    o=[o; conv(b(i,:),h];
end
subplot(2,3,2)
imshow (mat2gray(o))
title('filter1')
for i=1:512
    ol=[ol; conv(b(i,:),h];
end
subplot(2,3,3)
imshow ((mat2gray(o))
title ('filter2')
