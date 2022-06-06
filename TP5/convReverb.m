clear; clc

h = audioread('rtaImpulsoReverb.wav'); % importar respuesta al impulso

h_izq = [h(1:end,1)]; % separar en izquierda y derecha
h_der = [h(1:end,2)];

[x,fs] = audioread('clap.wav'); % importar audio clap.wav

dt = 1/fs; % tiempo entre muestras
tx = 0:dt:(length(x)-1)*dt; % vector de tiempo para el audio

conv_izq = conv(x,h_izq); % convolucion izquierda
conv_der = conv(x,h_der); % convolucion derecha

y = [conv_izq, conv_der]; % convolucion estereo
ty = 0:dt:(length(y)-1)*dt; % vector de tiempo de la respuesta

figure(1)
subplot(2,1,1)
plot(tx,x);
title('Audio clap original');
xlabel('Tiempo (s)');

subplot(2,1,2)
plot(ty,y);
title('Audio clap con reverberacion');
xlabel('Tiempo (s)');

sound(y,fs); % reproducir audio