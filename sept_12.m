clear all;
close all;
clc;
%ex(at*f+d)
recorder = audiorecorder(8000 ,8,1);
buff=input("To start recording press any key");
p=input("Enter the length of recording: ");
disp('Start speaking.');
recordblocking(recorder, p);
disp('End of Recording.');
play(recorder);
data = getaudiodata(recorder);
l=length(data);
figure;
plot(data);
runner=1;
e=1;
a=1;
as=0;
f=1;
d=0;
while(runner)
  disp("1. Amplification");
  disp("2. Attenuation");
  disp("3. Speed up");
  disp("4. Slow down");
  disp("5. Flip");
  disp("6. Delay");
  disp("7. Play/Plot/Exit");
  menu=input("Enter your choice: ");
  switch(menu)
  case {1, 2}
    e=input("Enter amplification/atenuation factor: ");
  case 3
    a=input("Enter speed up factor");
  case 4
    as=input("Enter slow down factor");
  case 5
    f=-1;
  case 6
    d=input("Enter delay");
  case 7
    runner=0;
  otherwise
    runner=0;
endswitch
endwhile
if(f==-1)
  data1=flipud(data);
else
  data1=data;
endif
if(as==0)
  r=[zeros(d*8000,1);data1(1:a:end)];
  sound(e.*r,8000);
  figure;
  plot(e.*r);
elseif(as!=0)
  dat=zeros(as*l,1);
  dat(as:as:end)=data1;
  r=[zeros(d*8000,1);dat];
  sound(e.*r,8000);
  figure;
  plot(e.*r);
endif
%end of program

