clear;clc

raices = [-1+1i; -1-1i; 1];

p = poly(raices);

polinomio = [1 1 0 -2];


x = -2:0.1:2;
y = x.^3 + x.^2 - 2;

p = []

plot(x,y)
grid on
ejes=gca;
ejes.XAxisLocation = 'origin';
ejes.YAxisLocation = 'origin';