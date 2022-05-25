clear; clc

% Sintesis de diente de sierra

fs = 48000; % Frecuencia de muestreo
dt = 1/fs; % Tiempo entre muestras
duration = 1; % Duracion de la señal
t = 0:dt:(duration-dt); % Vector de tiempos
a = 1; % Amplitud de la señal
f = 500; % Frecuencia de la señal

sumar = t*0;
for i = 1:10
    y = (a/i)*sin(2*pi*(i*f)*t); % Señal de entrada
    sumar = sumar + y;
end

sumar = sumar*0.5;

%sound(sumar,fs); % Se muestra la señal
plot(t,sumar); % Grafica de la señal de entrada

axis([0 0.007 -4 4]); % Configuracion de los ejes

audiowrite('dienteSierra.wav',sumar,fs);