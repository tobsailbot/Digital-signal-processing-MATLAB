clear; clc

% Sintesis de onda cuadrada

fs = 48000; % Frecuencia de muestreo
dt = 1/fs; % Tiempo entre muestras
duration = 1; % Duracion de la señal
t = 0:dt:(duration-dt); % Vector de tiempos
a = 1; % Amplitud de la señal
f = 500; % Frecuencia de la señal

yTriangular = t*0; % Vector de ceros para sumar

for i = 1:2:20 % numeros impares, salta de a 2
    y = (a/i)^2*cos(2*pi*(i*f)*t);
    yTriangular = yTriangular + y;
end


sound(yTriangular,fs); % Se muestra la señal
plot(t,yTriangular); % Grafica de la señal de entrada

axis([0 0.007 -4 4]); % Configuracion de los ejes