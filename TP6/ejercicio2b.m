clear;clc 

x = -5:0.1:5;
y = x.^3 + x.^2 - 2;

figure(1); 
plot(x,y)
grid on
ejes=gca; % Obtener los ejes del grafico
ejes.XAxisLocation = 'origin'; % Cambiar la posicion de los ejes
ejes.YAxisLocation = 'origin'; % Cambiar la posicion de los ejes
