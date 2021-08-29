xa = 0:20;
xb = zeros(1,14);
x1 =[xa xb];
x2 = zeros(1,39);
for x =4:39
    x2(x) = exp(x*pi/2);
end
figure(1)
subplot(1,2,1),plot(x1);
subplot(1,2,2),plot(x2);

convolucion = conv(x1,x2);
figure(2)
plot(convolucion);
%%
x = linspace(0.5,2.5,51);
x1 = linspace(0,4*pi,51);
y = exp(x);
y1 = sin(x1);
subplot(2,1,1);
stem(x,y); title('Funcion exponencial'),xlabel('Eje X'),ylabel('Eje Y');
subplot(2,1,2);
stem(x1,y1);title('Funcion seno'),xlabel('Eje X'), ylabel('Eje Y');

