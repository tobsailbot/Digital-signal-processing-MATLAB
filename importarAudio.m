clear,clc;

%-----------------------
% Importar audio en Matlab
%---------------------------

% importar archivos de audio
[audio,fs] = audioread('unodostres.wav');

dt = 1/fs; % tiempo entre muestras
t = 0:dt:(length(audio)-1)*dt; % vector de tiempo

t_6_sec = 6*fs; % tiempo de 6 segundos

% agrega ceros para alcanzar una mayor duracion
audio2 = [audio;zeros(t_6_sec-length(audio),1)]; % que audio sea de 6 segundos

t2 = 0:dt:(t_6_sec-1)*dt; % vector de tiempo para graficar solo 6 segundos

plot(t,audio); % graficar audio


%-----------------------
% Recortar audio en Matlab
%---------------------------

% tiempo de 1 segundo
t_uno = round(0.6*fs); % redondear a entero

% recortar audio
uno = audio2(1:(t_uno)); % recortar audio usando el indice (from:to)

tt_uno = 0:dt:(t_uno-1)*dt;
%sound(uno,fs); % reproducir audio
plot(tt_uno,uno); % graficar audio

%-----------------------

% tiempo de 1.5 seg , final de audio dos
t_dos = round(1.5*fs); % redondear a entero

% recortar audio 2
dos = audio2(t_uno:t_dos); % recortar audio usando el indice (from:to) desde final de t_uno hasta t_dos
%
tt_dos = 0:dt:(length(dos)-1)*dt; % calcular vector de tiempo para dos
sound(dos,fs); % reproducir dos
plot(tt_dos,dos); % graficar dos



