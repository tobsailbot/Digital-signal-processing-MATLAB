[ruidoFiltrado,fs] = audioread('ruidoFiltrado.wav');

nmuestras = length(ruidoFiltrado); % Numero de muestras

f = [(0:nmuestras-1)/nmuestras*fs]; % Eje de Frecuencias

Yruido = fft(ruidoFiltrado); % Transformada de Fourier

figure(2)
plot(ruidoFiltrado); % Graficar

figure(1)
plot(f,abs(Yruido)/length(ruidoFiltrado)); % Graficar

axis([0 fs/2 -inf inf]); % Limites del eje de frecuencias