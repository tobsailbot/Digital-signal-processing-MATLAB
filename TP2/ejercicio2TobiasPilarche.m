clear, clc;

% Cargar los datos
[audio44k, fs1] = audioread('audio44k.wav');

bajaRes = [audio44k(1:2:end)]; % Audio baja resolución

fs2 = fs1/2; % Frecuencia de muestreo

dt1 = 1/fs1; % Distancia temporal entre muestras
dt2 = 1/fs2;

t1 = 0:dt1:(length(audio44k)-1)*dt1; % Vector de tiempo para el audio original
t2 = 0:dt2:(length(bajaRes)-1)*dt2;  % Vector de tiempo para el audio baja resolución


plot(t1, audio44k, t2, bajaRes);    % Graficar ambos audios
