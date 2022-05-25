% Mezcla con paneo por ILD (Interaural Level Difference)

function [pistaEstereo] = mezclaILDx2(audioMono1,ang1,audioMono2,ang2)

    x1 = (ang1) / 180 + 0.5;
    x2 = (ang2) / 180 + 0.5;

    nivelDerechaAudio1 = sin(x1* (pi/2));
    nivelIzquierdaAudio1 = sin( (1-x1)* (pi/2));

    nivelDerechaAudio2 = sin(x2* (pi/2));
    nivelIzquierdaAudio2 = sin( (1-x2)* (pi/2));

    izquierdaAudio1 = nivelIzquierdaAudio1*audioMono1;
    derechaAudio1 = nivelDerechaAudio1*audioMono1;

    izquierdaAudio2 = nivelIzquierdaAudio2*audioMono2;
    derechaAudio2 = nivelDerechaAudio2*audioMono2;

    pistaEstereo = [(izquierdaAudio1+izquierdaAudio2), (derechaAudio1+derechaAudio2)];
    
    end
