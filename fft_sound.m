clear all;
close all;
clc;
buff=input("To start recording press any key and record a sample of 3s");
r1 = audiorecorder(8000 ,8,1);

disp('Start speaking.');
recordblocking(r1, 3);
disp('End of Recording.');
x = getaudiodata(r1);
plot(fft(x))
