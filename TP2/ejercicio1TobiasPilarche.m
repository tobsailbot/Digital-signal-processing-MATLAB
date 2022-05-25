clear, clc;

% Cargar los datos
[audio44k, fs1] = audioread('audio44k.wav');
[audio22k, fs2] = audioread('audio22k.wav');

dt1 = 1/fs1; % Distancia temporal entre muestras
t1 = 0:dt1:(length(audio44k)-1)*dt1; % Tiempo 1

dt2 = 1/fs2; % Distancia temporal entre muestras
t2 = 0:dt2:(length(audio22k)-1)*dt2; % Tiempo 2

plot(t1,audio44k,t2,audio22k); % Graficar

axis([0.176 0.18 -0.012 0.006]); % Para que coincidan los ejes

duracion = length(audio44k)/fs1 % Duracion del audio 44k

% Reproducir
sound(audio44k,fs1);
pause(duracion); 
sound(audio22k,fs2);