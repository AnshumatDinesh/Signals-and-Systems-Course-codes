clear all;
close all;
clc;
t=-50:50;
for index=1:length(t)
    if t(index)>=0
        u(index)=1;
    elseif t(index)<0
            u(index)=0;
    endif
endfor
plot(t,u)
