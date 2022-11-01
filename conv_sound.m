clear all;
close all;
clc;
x1=0,x2=1000;
h1=0,h2=1000;
xi1=x1+h1;
xi2=x2+h2;
if xi1>xi2
  t=-ceil(xi1):ceil(xi1);
elseif xi1<xi2
  t=-ceil(xi2):ceil(xi2);
end
r1 = audiorecorder(8000 ,8,1);
buff=input("To start recording press any key");
p=input("Enter the length of recording: ");
disp('Start speaking.');
recordblocking(r1, p);
disp('End of Recording.');
d1 = getaudiodata(r1);
x=d1;
r2 = audiorecorder(8000 ,8,1);
buff=input("To start recording press any key");
p2=input("Enter the length of recording: ");
disp('Start speaking.');
recordblocking(r2, p);
disp('End of Recording.');
d2 = getaudiodata(r1);
h=d2;
X=zeros(1,length(t));
H=zeros(1,length(t));
H(t<=h2 & t>=h1)=h(t<=h2 & t>=h1);
X(t>=x1 & t<=x2)=x(t>=x1 & t<=h2);
subplot(3,1,1);
plot(t,X,'r');
title("X(t)");
subplot(3,1,2);
plot(t,H,'g');
title("H(t)");
Y=zeros(1,length(t));
for i=xi1:xi2
  H1=fliplr(H);%flipping
  H1=circshift(H1,[0,i]);%shifting
  a=H1.*X;%scaling
  Y(t==i)=sum(a);
end
subplot(3,1,4);
plot(t,Y,'b');
title("Convolution");



