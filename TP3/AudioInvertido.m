clear,clc;

%-----------------------
% Importar audio en Matlab
%---------------------------

% importar archivos de audio
[unodostres,fs] = audioread('unodostres.wav');

dt = 1/fs; % tiempo entre muestras
t = 0:dt:(length(unodostres)-1)*dt; % vector de tiempo

unodostres = flipud(unodostres);

sound(unodostres,fs);

% guardar audio
audiowrite('audioInvertido.wav',unodostres,fs); 