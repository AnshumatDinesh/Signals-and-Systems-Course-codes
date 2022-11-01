clear all;
close all;
clc;
theta=-5*pi:0.001:5*pi;
x=exp(j.*theta);
a=real(x);
b=imag(x);
subplot(2,1,1);
plot3(a,b,theta)
xlabel('real');
ylabel('imaginary');
zlabel('angular frequency');
title('ploting real and imaginary part wrt angle');
subplot(2,1,2);
plot(a,b);
xlabel('real');
ylabel('imaginary');
title('ploting real and imaginary part ');

