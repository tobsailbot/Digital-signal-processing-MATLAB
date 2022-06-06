% generar impulso

clear; clc

fs = 48000;
dt = 1/fs;
t = 0:dt:1-dt;

impulso = zeros(48000,1);
impulso(1) = 1;

audiowrite('impulso.wav',impulso,fs);