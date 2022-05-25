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

% sound(audioTotal,fs); % reproducir audio

audiowrite('audioTotal.wav',audioTotal,fs); % guardar audio

%-----------------------

[audioTotal2,fs] = audioread('audioTotal.wav'); % importar audio

figure(2)
plot(audioTotal2); % graficar audio
axis([ 0 300000 -3 3]); % ajustar eje

% matlab normaliza a cero el audio exportado a wav
% con el comando 'audiowrite', 