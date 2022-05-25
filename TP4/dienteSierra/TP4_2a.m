clear; clc

fs = 48000; 
duracion = 1;  % segundos
dt = 1/fs;
t = 0:dt:duracion-dt;

a = rand(1,fs*duracion);            % amplitud random
a = (a-0.5) * 2;                    % escalar de -1 a 1
a = a*0.5;                          % escalar de -0.5 a 0.5

audiowrite('ruidoBlanco.wav',a,fs);     % guarda el archivo wav

