clear;clc

polinomio = [1 2 4];
raices = roots(polinomio);
p = poly(raices);

x = -2:0.1:4;
y = x.^2 + 2*x + 4;

figure(1); 
plot(x,y)
grid on
ejes=gca % Obtener los ejes del grafico
ejes.XAxisLocation = 'origin'; % Cambiar la posicion de los ejes
ejes.YAxisLocation = 'origin'; % Cambiar la posicion de los ejes
ejes.YLabel = 'eje imaginario';


