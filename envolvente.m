clear,clc;

%-----------------------
% Importar audio en Matlab
%---------------------------

% importar archivos de audio
[audio,fs] = audioread('unodostres.wav');

dt = 1/fs; % tiempo entre muestras
t = 0:dt:(length(audio)-1)*dt; % vector de tiempo

% sound(audio,fs);

%-----------------------
% Envolvente audio en Matlab
%---------------------------

nmuestras = length(audio); % numero de muestras totales
ta = 0.7; tb = 1.5; % tiempo de envolvente en segundos

nta = round(ta/dt); % numero de muestras en la envolvente
ntb = round(tb/dt); % numero de muestras en la envolvente

env = [ones(nta,1); 0.2*ones(ntb-nta,1); ones(nmuestras-ntb,1)]; % envolvente

envExp = transp(exp(-t/-0.1)); % envolvente exponencial


axis([0 2.5 -1.5 1.5]);

yEnv = audio.*envExp; % multiplicacion de audio por envolvente
plot(t,yEnv,t,envExp); % grafico de audio con envolvente
sound(yEnv,fs)

