clear;clc

raices = [-1 1 2];
polinomio = poly(raices);

x = -2:0.01:2; % Intervalo de x

y = x.^3 - 2*x.^2 - x + 2; % Funcion a evaluar

figure(1); 
plot(x,y)
grid on
ejes=gca; % Obtener los ejes del grafico
ejes.XAxisLocation = 'origin'; % Cambiar la posicion de los ejes
ejes.YAxisLocation = 'origin'; % Cambiar la posicion de los ejes

raices2 = [-1; 1; 2];
p = poly(raices2);
x2 = -2:0.01:2;
y2 = x.^3-2*x.^2-x+2;
figure(2);
plot(x2,y2)
grid on
ejes=gca;
ejes.XAxisLocation = 'origin';
ejes.YAxisLocation = 'origin';
