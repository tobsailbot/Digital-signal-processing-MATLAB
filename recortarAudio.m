clear,clc;

%-----------------------
% Importar audio en Matlab
%---------------------------

% importar archivos de audio
[audio,fs] = audioread('unodostres.wav');

dt = 1/fs; % tiempo entre muestras

plot(audio);

%-----------------------
% Recortar audio en Matlab
%---------------------------

recorte1 = audio(1:30000);
recorte2 = audio(30000:70000);
recorte3 = audio(70000:end);

unirAudio = [recorte3*0.2; recorte2*2; recorte1]; %con mod de ganancia

% generar nuevo eje de tiempo
t = 0:dt:(length(unirAudio)-1)*dt; % vector de tiempo

plot(t,unirAudio);

sound(unirAudio,fs);

audiowrite('tresDosUno.wav',unirAudio,fs) % guardar audio
