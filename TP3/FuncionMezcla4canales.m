
% Ejemplo de función en MATLAB
function [ pistaEstereo ] = mezcla4canales( audio1, x1, audio2, x2, audio3, x3, audio4, x4 )

    nivelDerecha1 = sin(x1* (pi/2));
    nivelIzquierda1 = sin( (1-x1)* (pi/2));
    audioIzquierda1 = nivelIzquierda1*audio1;
    audioDerecha1 = nivelDerecha1*audio1;

    nivelDerecha2 = sin(x2* (pi/2));
    nivelIzquierda2 = sin( (1-x2)* (pi/2));
    audioIzquierda2 = nivelIzquierda2*audio2;
    audioDerecha2 = nivelDerecha2*audio2;

    nivelDerecha3 = sin(x3* (pi/2));
    nivelIzquierda3 = sin( (1-x3)* (pi/2));
    audioIzquierda3 = nivelIzquierda3*audio3;
    audioDerecha3 = nivelDerecha3*audio3;

    nivelDerecha4 = sin(x4* (pi/2));
    nivelIzquierda4 = sin( (1-x4)* (pi/2));
    audioIzquierda4 = nivelIzquierda4*audio4;
    audioDerecha4 = nivelDerecha4*audio4;

    pistaEstereo = [(audioIzquierda1 + audioIzquierda2 + audioIzquierda3 + audioIzquierda4), (audioDerecha1 + audioDerecha2 + audioDerecha3 + audioDerecha4)];

    end
    
