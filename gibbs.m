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
l=1;
p=-n:n;
j=1;
k=1;
%reconstructing
for t=0:0.1:10
  x1(k)=0;
  for j=1:2*n+1
    x1(k)=x1(k)+a(j).*exp(i.*p(j).*w.*t);
  endfor
  k++;
endfor
subplot(2,2,1);
plot((-n:n),abs(a));
title('magnitude of a');
subplot(2,2,2);
plot((-n:n),arg(a));
title('Phase of a');
subplot(2,2,[3 4]);
plot((0:0.1:10),x1);
title('Reconstucted signal');
