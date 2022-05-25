clear,clc;

%-----------------------
% Importar audio en Matlab
%---------------------------

% importar archivos de audio
[unodostres,fs] = audioread('unodostres.wav');

dt = 1/fs; % tiempo entre muestras
t = 0:dt:(length(unodostres)-1)*dt; % vector de tiempo

audio = unodostres;

audioSaturado = audio*10;   % saturar el audio

audioTotal = [audio; audioSaturado]; % concatenar audio y audio saturado

figure(1)
plot(audioTotal); % graficar audio
axis([ 0 300000 -3 3]);

%  la funcion soundsc() lo que hace es normalizar a pico el audio
% lo lleva a valor max 1, solo en la reproduccion 
%-----------------------

[audioTotal2,fs] = audioread('audioTotal.wav'); % importar audio

figure(2)
plot(audioTotal2); % graficar audio
axis([ 0 300000 -3 3]); % ajustar eje

audioExtendido = [audioTotal; audioTotal2]; % concatenar audio

audioBajo = unodostres/50; % reducir el audio

%sound(audioBajo,fs); % reproducir audio

soundsc(audioBajo,fs); % reproducir audio