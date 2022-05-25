clear;clc

% Importar audio
[audio,fs] = audioread('coro2_lead.wav');

nmuestras = length(audio); % Numero de muestras

f = [(0:nmuestras-1)/nmuestras*fs]; % Eje de Frecuencias

Y = fft(audio)*2/nmuestras; % Transformada de Fourier

figure(1)
plot(audio);

figure(2)
plot(f,abs(Y)); % Graficar

axis([0, 4000, 0 ,0.005]); % Limitar eje Y

maximo = max(abs(Y)); % Maximo de la transformada
