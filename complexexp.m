clear all;
close all;
clc;
t=-50:0.1:50;
for index=1:length(t)
    u(index)=e^((0.05+i)*t(index));
end
%dicrete
stem(t,u)

