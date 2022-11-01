clear all;
close all;
clc;
t=-10:10;
for index=1:length(t)
    u(index)=e^t(index)
end
plot(t,u)

