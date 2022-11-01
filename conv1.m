clear all;
close all;
clc;
%Sampling the signals ----------------------------------------------------------
x1=0,x2=20;%Setting limits for x(t)
h1=0,h2=20;%Setting limits for h(t)
xi1=x1+h1;
xi2=x2+h2;
if xi1>xi2
  t=-ceil(xi1):ceil(xi1);
elseif xi1<xi2
  t=-ceil(xi2):ceil(xi2);
end
x=t;
h=20*sin(t);
X=zeros(1,length(t));
H=zeros(1,length(t));
H(t<=h2 & t>=h1)=h(t<=h2 & t>=h1);%for t∈(0,20) h(t)=20sin t
X(t>=x1 & t<=x2)=x(t>=x1 & t<=h2);%for t∈(0,20) x(t)=t
%Ploting the X(t) signal--------------------------------------------------------
subplot(4,1,1);
plot(t,X,'r');
title("X(t)");
%Ploting the H(t) signal--------------------------------------------------------
subplot(4,1,2);
plot(t,H,'g');
title("H(t)");
%Calculating the convolution----------------------------------------------------
Y=zeros(1,length(t));%initialising the conv vector as 0
for i=xi1:xi2
  H1=fliplr(H);%flipping
  H1=circshift(H1,[0,i]);%shifting
  a=H1.*X;%scaling
  Y(t==i)=sum(a);
  %ploting the overlap of X(𝜏) and H(t-𝜏)
  subplot(4,1,3);
  plot(t,H1,'b',t,X,'r');
  title("Overlapp");
  %ploting the convolution
  subplot(4,1,4);
  plot(t,Y,'b');
  title("Convolution");
  pause(0.001);%Delay for animation
end



