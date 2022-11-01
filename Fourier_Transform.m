clear all;
close all;
clc;
syms t w;
x=input('Enter a function in t');
y=inline(x);
y1=@(t,w)y(t).*exp(-i*w*t);
a=input("Enter the lower limit: ");
b=input("Enter the upper limit: ");
n=input("Enter the range of W(-n:n)")
X=@(w)integral(@(t) y1(t,w),a,b);
j=1;
for w=-n:n
  A(j)=X(w);
  j++;
end
subplot(2,1,1);
plot((-n:n),abs(A));
title('magnitude of X(jw)');
subplot(2,1,2);
plot((-n:n),arg(A));
title('Phase of X(jw)');
