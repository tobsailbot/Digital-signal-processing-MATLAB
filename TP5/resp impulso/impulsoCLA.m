clear;clc

[h,fs] = audioread('cla76 impulse.wav');

h = h*0.58;

H = fft(h);

f = 0:1:124416-1;

figure(1)
semilogx(f, 20*log10(abs(H)));
grid on
axis([0 fs/2 -6 3])
title('Respuesta en frecuencia del filtro')