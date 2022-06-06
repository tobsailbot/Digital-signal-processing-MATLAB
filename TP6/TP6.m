%% Graficar polinomio
x = -1:0.01:4;
y = x.^2 - 3*x + 2;
figure(1);
plot(x,y)
grid on
ejes=gca;
ejes.XAxisLocation = 'origin';
ejes.YAxisLocation = 'origin';

%% ---------- Ejercicio 1 ----------%%
raices = [-1; 1; 2];
p = poly(raices);
x = -2:0.01:2;
y = x.^3-2*x.^2-x+2;
plot(x,y)
grid on
ejes=gca;
ejes.XAxisLocation = 'origin';
ejes.YAxisLocation = 'origin';

%% ---------- Ejercicio 2 ----------%%
x = -2:0.01:4;
y = x.^3 - 3*x.^2 - 2*x + 2; 
plot(x,y)
grid on
ejes=gca;
ejes.XAxisLocation = 'origin';
ejes.YAxisLocation = 'origin';

p = [1 -3 -2 2];
raices = roots(p);

%% ---------- Ejercicio 3 ----------%%
x = -2:0.01:4;
y = x.^2 - 3*x + 4; 
plot(x,y)
grid on
ejes=gca;
ejes.XAxisLocation = 'origin';
ejes.YAxisLocation = 'origin';

p = [1 -3 4];
raices = roots(p);

%% ---------- Ejercicio 4 ----------%%
x = -2:0.01:4;
y = x.^2 - 3*x + 2.25; 

plot(x,y)
grid on
ejes=gca;
ejes.XAxisLocation = 'origin';
ejes.YAxisLocation = 'origin';

p = [1 -3 2.25];
raices = roots(p);

%% ---------- Ejercicio 5 ----------%%
raices = [-1.4; 0; 1+0.5i;  1-0.5i];
p = poly(raices)
x=-2:0.01:2;
y = x.^4 - 0.6*x.^3 - 1.55*x.^2 + 1.75*x;
plot(x,y)
ejes=gca;
ejes.XAxisLocation = 'origin';
ejes.YAxisLocation = 'origin';

%% ---------- Ejercicio 6 ----------%%
polinomio=[1 -7 14 -8];  
roots(polinomio)

%% ---------- Ejercicio 7 ----------%%
x=[8 4 2 1 0];
h = [1 0 0 0 0 0 0.6 0 0 0 0 0];
y=conv(x,h);
n=0:15;
stem(n,y)
ejes=gca; ejes.XAxisLocation = 'origin'; ejes.YAxisLocation = 'origin';
yticks([0:0.5:8]) 
xticks(n) 
axis([-1 16 -0.2 8])
grid on
