clear all;
close all;
clc;
a=imread('onion.png');
h=0.5*ones(1,2);
n=0:length(h)-1;
h3=[h(1)*exp(-j*pi/2) h(2)*exp(j*pi/2)];
c=rgb2gray(a);
w=linspace(-pi,pi,100);
N=1000;
H= zeros(1,100);
for b=0:length(h)-1
    H = H+h3(b+1)*exp(-j*w*b);
end
H1 = zeros(1,100);
for b=0:length(h)-1
    H1=H1+h(b+1)*exp(-j*w*b);
end
subplot(3,2,[1 2]);
imshow(c);
title("original signal");
subplot(3,2,3);
plot(w,abs(H1));
title("lpf");
subplot(3,2,4);
i1=conv2(c,h);
imshow(mat2gray(i1));
title("lpf image");
subplot(3,2,5);
plot(w,abs(H));
title("hpf");
subplot(3,2,6);
i2=conv2(c,imag(h3));
imshow(mat2gray(i2))'
title("hpf image");
