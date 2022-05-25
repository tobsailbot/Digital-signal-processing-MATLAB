clear, clc;

%-----------------------
% 16. Mezcla monoaural
%---------------------------

% importar archivos de audio
[coro1,~] = audioread('coro1_bass.wav');
[coro2,fs] = audioread('coro2_lead.wav');

% reproducir sonidos uno despues del otro
sound([(coro1);coro2],fs)

% suma de ambos sonidos,
% coro 2 con la mitad de amplitud
coro3 = coro1 + (coro2 / 2);



plot(coro3)