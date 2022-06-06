clear;clc

raices = [-2 -1 1];
p = poly(raices);

x = -5:0.1:5;
y = x.^3 + 2*x.^2 - x - 2;

figure(1)
plot(x,y)
ejes = gca;
ejes.XAxisLocation = 'origin';
ejes.YAxisLocation = 'origin';
grid on