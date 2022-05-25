clear; clc

% importar audio
[audio1,fs] = audioread('coro1_bass.wav');
% importar audio
[audio2,fs] = audioread('coro2_lead.wav');

mezclaITD = mezclaITDx2(audio1,-60,audio2,60,fs);

sound(mezclaITD,fs)
audiowrite('mezclaITD.wav',mezclaITD,fs)