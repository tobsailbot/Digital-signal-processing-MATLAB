
% Ejemplo de función en MATLAB
function [ pistaEstereo ] = paneoEstereo( audioMono, x)

    nivelDerecha = sin(x* (pi/2));
    nivelIzquierda = sin( (1-x)* (pi/2));

    audioIzquierda = nivelIzquierda*audioMono;
    audioDerecha = nivelDerecha*audioMono;
    pistaEstereo = [audioIzquierda audioDerecha];
    end
    
