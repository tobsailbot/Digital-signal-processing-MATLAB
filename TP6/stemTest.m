clear;clc

fs= 48000;
dt = 1/fs;
t = 0:dt:(0.1-dt);

y = 0.2*sin(2*pi*250*t);

stem(t,y)
