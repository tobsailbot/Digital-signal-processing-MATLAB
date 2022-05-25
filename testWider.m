clear;clc
[audio,fs] = audioread('test 1.mp3');

out = (2/pi) * atan(2*audio);
out = out*0.1;

figure(1)
plot(audio)
clear sound;
soundsc(out,fs)


