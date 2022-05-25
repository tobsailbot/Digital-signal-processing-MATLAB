clear,clc;

%-----------------------
% Importar audio en Matlab
%---------------------------

% importar archivos de audio
[audio,fs] = audioread('fragmentoQuadrophenia.wav');

dt = 1/fs; % tiempo entre muestras
t = 0:dt:(length(audio)-1)*dt; % vector de tiempo

plot(t,audio);


a = audio(2:3,1) % elemento de 2 a 3 de la columna 1

b = audio(1:3,2) % elemento de 2 a 3 de la columna 2

c = audio(:,1) % todo el vector de la columna 1

d = audio(100:end,2) % desde 100 todo el vector de la columna 2

