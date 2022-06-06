% Analisis del filtro de un editor de audio

clear; clc

H = (importdata('H.mat')); % Importar el filtro
[x,fs] = audioread('Illenium - Hearts on Fire.flac');

recorteX = [x(1:48000,1)]; % Recortar el audio

X = (fft(recorteX)); % Transformada de Fourier
figure(1)
plot(abs(H)) % Grafica de la respuesta en frecuencia del filtro

inverse = H .* X; % Multiplicacion de la señal por el filtro

y = ifft(inverse); % Transformada inversa de fourier

fs = 48000;

f = 0:1:fs-1;

figure(1)
subplot(3,1,1)
semilogx(f, 20*log10(abs(H)), 240,20*log10(abs(H(241))),'o');
grid on
axis([0 fs/2 -40 10])
title('Respuesta en frecuencia del filtro')

