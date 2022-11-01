clear all;
close all;
clc;
t=linspace(-pi,pi,100);
for index=1:length(t)
    if t(index)>=0
        r(index)=t(index);
    else if t(index)<0
            r(index)=0;
        end
    end
end
subplot(2,2,1);
plot(t,r);
title("Unit Ramp");
for index=1:length(t)
  an(index)=5^t(index);
end
subplot(2,2,2);
plot(t,an);
title("A^n");
s=sin(t)
subplot(2,2,3);
plot(t,s);
title("Sinusoidal Signal");
for index=1:length(t)
  exp(index)=e^(2i*t(index)+1);
end
subplot(2,2,4);
plot(t,exp);
title("Complex Exponential Signals.");
