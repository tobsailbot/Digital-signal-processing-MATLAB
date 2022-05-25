clear; clc;

[audio,fs] = audioread('Emilia - Como Si No Importara.flac');

dt = 1/fs; % tiempo entre muestras

% recortar 20 seg
recortarDesde = 30*fs
recortarHasta = 35*fs;
recortarAudio = [audio(recortarDesde:recortarHasta,1), audio(recortarDesde:recortarHasta,2)];

% eje de tiempos
t = recortarDesde:dt:(recortarHasta-1)*dt;

% funcion karaoke
audioKaraoke = karaoke(recortarAudio);

% guardar audio generado
sound(audioKaraoke,fs)