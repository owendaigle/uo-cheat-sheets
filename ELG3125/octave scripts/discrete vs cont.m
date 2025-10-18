pkg load symbolic;
x = -10:0.01:10;

y = exp(-x);
subplot(1,2,1);
plot(x,y, 'LineWidth', 3);
axis([-2 6 0 4]);
grid;
title("Continuous");

n = -10:1:10
y = exp(-n);
subplot(1,2,2);
stem(n,y, 'LineWidth', 3);
axis([-2 6 0 4]);
grid;
title("Discrete");
