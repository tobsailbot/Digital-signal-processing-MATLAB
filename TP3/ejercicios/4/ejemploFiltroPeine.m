clear;clc

% importar audio
[ruidoBlanco, fs] = audioread('Ruido Blanco.wav');

angulo = 45;
angRad = angulo*(pi/180);
a = 0.09;
c = 340;

% calcular retardo temporal
retardo = (a/c) * (angRad + sin(angRad));

% numero de muestras que agrega el retardo
nMuestras = round(retardo*fs);

% aplicar retardo
canalIzq = [zeros(nMuestras,1); ruidoBlanco(:,1)]; %retardo al inicio
canalDer = [ruidoBlanco(:,1); zeros(nMuestras,1)];

% sumar canales con ITD
ruidoBlanco45grados = [canalIzq + canalDer];

sound(ruidoBlanco45grados,fs)

% guardar audio
audiowrite('ruidoBlanco45FiltroPeine.wav',ruidoBlanco45grados,fs)
