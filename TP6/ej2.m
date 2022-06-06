clear;clc

x = -3:0.01:4; % Intervalo de x
y = x.^3 - 3*x.^2 - 2*x + 2

p = [1 -3 -2 2 ];
raices = roots(p);

figure(1); 
plot(x,y)
grid on
ejes=gca; % Obtener los ejes del grafico
ejes.XAxisLocation = 'origin'; % Cambiar la posicion de los ejes
ejes.YAxisLocation = 'origin'; % Cambiar la posicion de los ejes




