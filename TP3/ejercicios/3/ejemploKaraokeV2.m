clear; clc;

[audio,fs] = audioread('Emilia - Como Si No Importara.flac');


% recortar 20 seg
recortarDesde = 30*fs
recortarHasta = 35*fs;
recortarAudio = [audio(recortarDesde:recortarHasta,1), audio(recortarDesde:recortarHasta,2)];


% invertir canales
intercambiarCanales = flip(recortarAudio,2);

% invertir polaridad
invertirPolaridad = intercambiarCanales*(-1);

sumaAudio = recortarAudio + invertirPolaridad;

sound(sumaAudio,fs);

