clear all;
close all;
clc;
x=linspace(-1,1,100);
y=sqrt(1-(x.^2));
a=linspace(2,4,100);
b=sqrt(1-(a-3).^2);
c=linspace(1,1.5,25);
y1=2*(1-c);
d=linspace(1.5,2,25);
y2=(d-2)/0.5;
z1=[x c ];
z2=[z1 d];
z=[z2 a];
q1=[y y1];
q2=[q1 y2];
q=[q2 b];
subplot(2,2,[1,2]);
plot(z,q);
title('original signal X(t)');
e=input("Enter e: ");
f=input("Enter f: ");
g=input("Enter g: ");
h=input("Enter h: ");
runner=1;
while(runner)
  disp("1. ex(f.t)+h");
  disp("2. ex(f+t)+h");
  disp("3. ex(ft+g)+h");
  disp("4. ex(f(t+g))+h");
  disp("5. All");
  disp("6. Exit");
  menu=input("Enter choice:");
  switch(menu)
    case 1
      subplot(2,2,[3 4]);
      plot(z/f,e*q+h);
      title("ex(f.t)+h");
    case 2
      subplot(2,2,[3 4]);
      plot(z-f,e*q+h);
      title("ex(f+t)+h");
    case 3
      subplot(2,2,[3 4]);
      plot((z-g)/f,e*q+h);
      title("ex(ft+g)+h");
    case 4
      subplot(2,2,[3 4]);
      plot((z-f*g)/f,e*q+h);
      title("ex(f(t+g))+h");
    case 5
      subplot(5,2,[1,2]);
      plot(z,q);
      title('original signal X(t)');
      subplot(5,2,[3 4]);
      plot(z/f,e*q+h);
      title("ex(f.t)+h");
      subplot(5,2,[5 6]);
      plot(z-f,e*q+h);
      title("ex(f+t)+h");
      subplot(5,2,[7 8]);
      plot((z-g)/f,e*q+h);
      title("ex(ft+g)+h");
      subplot(5,2,[9 10]);
      plot((z-f*g)/f,e*q+h);
      title("ex(f(t+g))+h");
      runner=0;
    case 6
      runner=0;
    otherwise
      runner=0;
  endswitch

endwhile;

