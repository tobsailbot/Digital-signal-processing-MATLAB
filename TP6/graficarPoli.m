% Graficar polinomio
x = -1:0.01:4; % Intervalo de x
y = x.^2 - 3*x + 2; % Funcion a graficar
figure(1); 
plot(x,y)
grid on
ejes=gca; % Obtener los ejes del grafico
ejes.XAxisLocation = 'origin'; % Cambiar la posicion de los ejes
ejes.YAxisLocation = 'origin'; % Cambiar la posicion de los ejes

polinomio = [1 -3 2]; % Polinomio a evaluar
raices = roots(polinomio); % Obtener las raices del polinomio

polinomio = poly(raices)









