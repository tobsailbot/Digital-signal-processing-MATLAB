% Mezcla con paneo por ILD (Interaural Level Difference)
    clear;clc

    [audioMono1,fs]= audioread('coro1_bass.wav');
    [audioMono2,fs]= audioread('coro2_lead.wav');

    ang1 = -60;
    ang2 = 60;

    mezclaILD = mezclaILDx2(audioMono1,ang1,audioMono2,ang2);

    sound(mezclaILD,fs);

    audiowrite('mezclaILD.wav',mezclaILD,fs);