clear; clc

% Sintesis de onda cuadrada

fs = 44100;             % Frecuencia de muestreo
dt = 1/fs;              % Tiempo entre muestras
duracion = 3;           % Duracion de la se�al 3 seg
t = 0:dt:(duracion-dt); % Vector de tiempos
a = 1;                  % Amplitud de la se�al
f1 = 150;                % Frecuencia de la se�al


ya = t*0;        % Vector de ceros para sumar

for i = 1:2:15    % numeros impares, salta de a 2
    y = (a/i)*sin(2*pi*(i*f1)*t);
    ya = ya + y;
end


yb = t*0;        % Vector de ceros para sumar
faseb = pi/2;

for i = 1:2:15    % numeros impares, salta de a 2
    y = (a/i)*sin(2*pi*(i*f1)*t + faseb);
    yb = yb + y;
end

yc = t*0;        % Vector de ceros para sumar
fasec = 2*pi*rand(1,1); % fase aleatoria

for i = 1:2:15    % numeros impares, salta de a 2
    y = (a/i)*sin(2*pi*(i*f1)*t + fasec);
    yc = yc + y;
end

yTotal = [ya, zeros(1,fs), yb, zeros(1,fs), yc]; % secuencia de se�ales

t = 0:dt:length(yTotal)/fs-dt; % nuevo vector de tiempos

figure(1)
plot(t,yTotal); % grafica de la se�al


% Transformada de Fourier de la se�al
nmuestras = length(ya); % Numero de muestras
f = [(0:nmuestras-1)/nmuestras*fs]; % Eje de Frecuencias
Ya = fft(ya)*2/nmuestras; % Transformada de Fourier
figure(2)
plot(f,abs(Ya)); % Graficar
axis([0, 5000, 0 ,1]); % Limitar eje Y

yTotal_max = (yTotal / max(abs(yTotal))) * 0.9; % limitar valor maximo de la se�al a 0.9
soundsc(yTotal_max,fs); % reproducir se�al

figure(3)
plot(t,yTotal_max); % Graficar

audiowrite('TP4_1.wav',yTotal_max,fs); % Guardar se�al
