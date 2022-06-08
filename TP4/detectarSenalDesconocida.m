clear;clc

[yDesconocida,fs] = audioread('desconocida.wav');

dt = 1/fs;
t = 0:dt:1-dt;

yDesconocida= transpose(yDesconocida);
%yDesconocida = 5*sin(2*pi*440*t) + 3*sin(2*pi*450*t) + 5*sin(2*pi*1760*t);

amplitudYDesconocida = 0;


for i = 0:8000

    f = i;
    yDeteccion = (yDesconocida) .* (cos(2*pi*f*t));
    promedio = abs(mean(yDeteccion));

    if promedio <= 1e-6
        %disp(['Frecuencia encontrada: ', num2str(f)])
        promedio = 0;
    else
        disp(['Frecuencia encontrada: ', num2str(f)]);
        amplitudYDesconocida = promedio*2
    end
end


%figure(1)
%plot(t,yDesconocida,t,yDeteccion)
%grid on
%axis([0 0.01 -1 1]);
