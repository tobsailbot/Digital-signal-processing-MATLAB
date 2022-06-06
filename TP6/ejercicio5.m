clear;clc

x = -5:0.1:5;
y = x.^3 - 5*x.^2 - 4*x + 20; % polinomio normal

polinomio = [1 -5 -4 20];
raices = roots(polinomio);

y2 = (x-5).*(x+2).*(x-2); % polinomio factorizado

figure(1)
plot(x,y,x,y2,'o')
grid on
ejes=gca;
ejes.XAxisLocation = 'origin';
ejes.YAxisLocation = 'origin';
