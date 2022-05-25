clear; clc

% Sintesis de onda cuadrada

fs = 48000; % Frecuencia de muestreo
dt = 1/fs; % Tiempo entre muestras
duration = 1; % Duracion de la señal
t = 0:dt:(duration-dt); % Vector de tiempos
a = 1; % Amplitud de la señal
f = 500; % Frecuencia de la señal

yCuadrada = t*0; % Vector de ceros para sumar

% ----- Generacion de la señal usando if, eligiendo numeros impares

% for i = 1:20 % 100 numeros impares
%     if mod(i,2) == 1 % si el resto de la division es 1, impar
%         y = (a/i)*sin(2*pi*(i*f)*t);
%         yCuadrada = yCuadrada + y;
%     end
% end

for i = 1:2:20 % numeros impares, salta de a 2
    y = (a/i)*sin(2*pi*(i*f)*t);
    yCuadrada = yCuadrada + y;
end


sound(yCuadrada,fs); % Se muestra la señal
plot(t,yCuadrada); % Grafica de la señal de entrada

axis([0 0.007 -4 4]); % Configuracion de los ejes