% Mezcla con paneo por ITD (Interaural Time Difference)
function [audioMezclaITD] = mezclaITDx2(audioMono1, ang1, audioMono2, ang2,fs)

    a = 0.09; % radio de la cabeza en metros
    c = 340; % velocidad del sonido

    angRad1 = ang1*(pi/180); % angulo de inclinacion en radianes
    angRad2 = ang2*(pi/180); % angulo de inclinacion en radianes

    % calcular retardo temporal
    retardo1 = (a/c) * (angRad1 + sin(angRad1));
    retardo2 = (a/c) * (angRad2 + sin(angRad2));

    % numero de muestras que agrega el retardo
    nMuestras1 = round(retardo1 * fs);
    nMuestras2 = round(retardo2 * fs);

    % si el angulo es mayor a 0, aplicar retardo en izq sino en der
    if ang1 > 0
        % retardo en el izq
        canalIzq1 = [zeros(nMuestras1,1); audioMono1(:,1)]; %retardo al inicio
        canalDer1 = [audioMono1(:,1); zeros(nMuestras1,1)];
    else
        % retardo en el der
        canalIzq1 = [audioMono1(:,1); zeros(abs(nMuestras1),1)]; % convertir nmuestras en positivo abs()
        canalDer1 = [zeros(abs(nMuestras1),1); audioMono1(:,1)]; %retardo al inicio
    end

    % si el angulo es mayor a 0, aplicar retardo en izq sino en der
    if ang2 > 0
        % retardo en el izq
        canalIzq2 = [zeros(nMuestras2,1); audioMono2(:,1)]; %retardo al inicio
        canalDer2 = [audioMono2(:,1); zeros(nMuestras2,1)];
    else
        % retardo en el der
        canalIzq2 = [audioMono2(:,1); zeros(abs(nMuestras2),1)]; % convertir nmuestras en positivo abs()
        canalDer2 = [zeros(abs(nMuestras2),1); audioMono2(:,1)]; %retardo al inicio
    end

    % conformar audios estereo con retardo
    audioEstereo1 = [canalIzq1, canalDer1];
    audioEstereo2 = [canalIzq2, canalDer2];

    % longitud de los audios, si es desigual no pueden mezclarse
    longitudAudio1 = length(audioEstereo1);
    longitudAudio2 = length(audioEstereo2);

    % cantidad de ceros necesaria para obtener la misma duracion entre audios
    addZeros = [zeros(abs(longitudAudio1-longitudAudio2),1),zeros(abs(longitudAudio1-longitudAudio2),1)];

    % si audio1 es mas largo, agregar zeros al audio2
    if longitudAudio1 > longitudAudio2
    audioEstereo2 = [audioEstereo2; addZeros];
    else
        audioEstereo1 = [audioEstereo1; addZeros];
    end

    % sumar ambos audios con retardo
    audioMezclaITD = audioEstereo1 + audioEstereo2;

end
