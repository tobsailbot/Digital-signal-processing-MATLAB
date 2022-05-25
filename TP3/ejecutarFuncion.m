clear;clc

[coro1,fs] = audioread('coro1_bass.wav');
[coro2,fs] = audioread('coro2_lead.wav');
[coro3,fs] = audioread('coro3_tenor.wav');
[coro4,fs] = audioread('coro4_baritone.wav');

audio4canales = mezcla4canales(coro1,0.5,coro2,0.4,coro3,0.6,coro4,0.5);
