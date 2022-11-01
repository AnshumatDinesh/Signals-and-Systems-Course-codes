clear all;
close all;
clc;
syms t;
n=input('Enter the maximum limit of k');
w=input('Enter the angular frequency');
T=(2*pi)/w;
q=input('Enter a function in t');
y=inline(q);
a=[];
j=1;
for k=-n:n
  x=@(t)(y(t).*exp(-i.*k.*w.*t));
  a(j)=integral(x,0,T)/T;
  j++;
end
subplot(2,1,1);
plot((-n:n),abs(a));
title('magnitude of a');
subplot(2,1,2);
plot((-n:n),arg(a));
title('Phase of a');
