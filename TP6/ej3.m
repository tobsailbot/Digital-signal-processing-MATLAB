clear;clc


x = -2:0.01:4; % Intervalo de x
y = x.^2 - 3*x + 4;
p = [1 -3 4]; % Polinomio de interpolacion
raices = roots(p); % Raices del polinomio

figure(1); 
plot(x,y)
grid on
ejes=gca; % Obtener los ejes del grafico
ejes.XAxisLocation = 'origin'; % Cambiar la posicion de los ejes
ejes.YAxisLocation = 'origin'; % Cambiar la posicion de los ejes
