clear all;
close all;
clc;
t=-50:50;
for index=1:length(t)
    if t(index)==0%The function has the value 1 at t=0
        u(index)=1;
    else if t(index)!=0%The function has value 0 at all other t
            u(index)=0;
        end
    end
end
%Ploting the function as continous signal
plot(t,u)

