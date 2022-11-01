clear all;
close all;
clc;
t=-10:10;
for index=1:length(t)
    if t(index)==0
        u1(index)=1;
    else if t(index)!=0
            u1(index)=0;
        end
    end
end
for index=1:length(t)
    if t(index)==-2
        u2(index)=1;
    else if t(index)!=-2
            u2(index)=0;
        end
    end
end
y=u1.*u2
%dicrete
stem(t,y)

