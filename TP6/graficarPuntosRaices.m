clear;clc

polinomio = [1 1 0 -2 0];
raices = [roots(polinomio)]
p = poly(raices)

x = -2:0.1:4;
y = x.^3 + x.^2 -2 ;

figure(1); 
plot(real(raices),imag(raices),'or')
axis([-2 2 -2 2])
grid on
ejes=gca; % Obtener los ejes del grafico
ejes.XAxisLocation = 'origin'; % Cambiar la posicion de los ejes
ejes.YAxisLocation = 'origin'; % Cambiar la posicion de los ejes
ejes.YLabel.String = 'eje imaginario';
ejes.XLabel.String = 'eje real';
title('plano complejo');

