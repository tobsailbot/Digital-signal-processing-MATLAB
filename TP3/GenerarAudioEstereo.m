clear,clc;

%-----------------------
% Importar audio en Matlab
%---------------------------

% importar archivos de audio
[pista1,fs] = audioread('coro1_bass.wav');
[pista2,fs] = audioread('coro2_lead.wav');

dt = 1/fs; % tiempo entre muestras
t = 0:dt:(length(pista1)-1)*dt; % vector de tiempo

track1paneoIzq = [pista1, pista2];

track2paneoDer = [pista2, pista2];

audioEstereo = track1paneoIzq + track2paneoDer;

sound(audioEstereo,fs);


