clear, clc;

% Cargar los datos
[audio,fs] = audioread('cuatro palabras Donofrio.wav');

dt = 1/fs; % Distancia temporal entre muestras
t = 0:dt:(length(audio)-1)*dt; % Vector de tiempo


sangre = audio((2*fs):(4*fs)-1);    % Seleccionar la señal de "sangre"
t_sangre = 0:dt:(length(sangre)-1)*dt;

nueva = audio((4*fs):(7*fs)-1);   % Seleccionar la señal de "nueva"
t_nueva = 0:dt:(length(nueva)-1)*dt;

perlas = audio((8*fs):(10*fs)-1);  % Seleccionar la señal de "perlas"
t_perlas = 0:dt:(length(perlas)-1)*dt;

quince = audio((10*fs):end);  % Seleccionar la señal de "quince"
t_quince = 0:dt:(length(quince)-1)*dt;

nuevoAudio = [nueva; perlas; quince; sangre]; % Concatenar las señales
t_nuevoAudio = 0:dt:(length(nuevoAudio)-1)*dt;

plot(t_nuevoAudio, nuevoAudio); % Graficar las señales
audiowrite('nuevoAudio.wav', nuevoAudio, fs); % Guardar el audio
sound(nuevoAudio, fs); % Reproducir las señales


