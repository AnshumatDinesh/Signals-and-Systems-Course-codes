clear all;
close all;
clc;
t=linspace(-1,1,100);
for index=1:length(t)
  x1(index)=sin(2*pi*t(index))*e^(t(index).*-2)%taking T=1
end
subplot(3,2,[1 2])
plot(t,x1)
title("X(t)=sin(2πt/T).e(-2t)")
for index=1:length(t)
  x2(index)=2*cos(2*pi*t(index))*sin(2*pi*t(index))%taking T1=T2=1
end
subplot(3,2,[3 4])
plot(t,x2)
title("X(t)=2cos(2πt/T1) sin(2πt/T2)")
for index=1:length(t)
  x3(index)=sin(2*pi*t(index))*e^(t(index).*-2)+sin(2*pi*t(index))*e^(t(index).*-4)
end
subplot(3,2,[5 6])
plot(t,x3)
title("X(t)=sin(2πt/T).e(-2t) + sin(2πt/T1).e(-4t)")
