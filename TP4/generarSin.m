clear; clc

fs = 44100;
dt = 1/fs;
t = 0:dt:1-dt;


y1 = (5*cos(2*pi*90*t));
y2 = (1*cos(2*pi*90*t));

y3 = y1 .* y2; % Y desconocida

promean = mean(y3); % Promedio de Y

promedio1 = sum(y3)/ length(y3);
promedio = sum(y3)/ length(y3);



if abs(promedio) < 1e-14
    disp('Las frecuencias son distintas');
    promedio = 0
else
    disp('Las frecuencias son iguales');
end

figure(1)
plot(t,y3);

grid on
axis([0 0.1 -1 1]);