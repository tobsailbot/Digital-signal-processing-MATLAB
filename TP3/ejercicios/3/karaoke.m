function [audioKaraoke] = karaoke(audioEstereo)

    % separar canales
    canalIzq = audioEstereo(:,1);
    canalDer = audioEstereo(:,2);
    audioKaraoke = canalIzq + (canalDer * -1);

end




