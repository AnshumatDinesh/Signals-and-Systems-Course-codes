clear alll;
close all;
clc;
[sigma omega]=meshgrid(-20:0.1:20); %returns a 2-d Grid
s=sigma+j*omega;
%H=abs((s.^2-25)./((s+5).*(s-10))); %Transfer function1
H=abs((s.^17-25)./((s-6).*(s-1))); %Transfer function2
mesh(sigma, omega, H);%ploting in 3-D
xlabel('\sigma')
ylabel('\omega')
zlabel('H(s)')
title ('Laplace Plane')
