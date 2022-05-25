clc
clear

% Eje de tiempos
fs = 48000;
duracion = 1;
nmuestras = duracion*fs;
dt = 1/fs;
t = 0:dt:(nmuestras-1)*dt;

% Definicion de Senales

A1= 5 ; f1= 1/0.01 ; fase1= pi/2;

A2 = 11 ; f2 = 1/0.01 ; fase2 = 0;

y1 = A1*sin(2*pi*f1*t+fase1);
y2 = A2*sin(2*pi*f2*t+fase2);
y3 = y1+y2;

plot(t,y1,'--',t,y2,'--',t,y3,'k');

lista = [2,3,4,5,]

legend('y1','youtube','suma', 'Location', 'NorthEast');
grid on ;
xlabel('t(segundos)');
ylabel('y');

axis([0, 0.01, -10, 20])





 
 



