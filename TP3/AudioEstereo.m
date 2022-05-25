clear,clc;

%-----------------------
% Importar audio en Matlab
%---------------------------

% importar archivos de audio
[audio,fs] = audioread('fragmentoQuadrophenia.wav');

dt = 1/fs; % tiempo entre muestras
t = 0:dt:(length(audio)-1)*dt; % vector de tiempo

plot(t,audio);

audioZero = transp([zeros(1,length(audio))]); % vector de ceros

audioIzq = [audio(:,1), audioZero]; % audio izquierdo con ceros en la columna 2
audioDer = [audioZero, audio(:,1)]; % audio izquierdo con ceros en la columna 2

audioX = [audioDer audioIzq]; % audio con canales cruzados







