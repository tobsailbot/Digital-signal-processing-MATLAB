clear; clc

[h,fs] = audioread('rtaImpulso.wav'); % Leer el audio

H = fft(h); % Transformada de Fourier
f = 0:1:fs-1; % Frecuencias

figure(1)
subplot(2,1,1)
semilogx(f, 20*log10(abs(H)), 250,20*log10(abs(H(251))),...
'or', 1500,20*log10(abs(H(1501))),'or');
xlabel('Frecuencia [Hz]');
ylabel('Amplitud [dB]');
grid on
axis([0 fs/2 -40 10])
title('Filtro pasa banda Goldwave (250hz - 1500hz)')


subplot(2,1,2)
semilogx(f,angle(H)/pi*180)
axis([20 fs/2 -90 0])
grid on
