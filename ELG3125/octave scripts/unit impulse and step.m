pkg load symbolic;
x = -10:0.01:10;
n = -10:1:10;

y = heaviside(x);
subplot(2,2,1);
plot(x,y, 'LineWidth', 3);
axis([-6 6 0 2]);
grid;
title("Cont Unit Step");

y = (n >= 0);  % y is 1 for n=0 and all n>0, 0 otherwise
subplot(2,2,2);
stem(n, y, 'LineWidth', 3);
axis([-6 6 0 2]);
grid;
title("Discrete Unit Step");

subplot(2,2,3);
impulse = (x == 0);   % 1 at n=0, 0 elsewhere
plot(x, impulse, 'LineWidth', 3);
axis([-6 6 0 2]);
grid;
title("Cont Unit Pulse");


subplot(2,2,4);
impulse = (n == 0);   % 1 at n=0, 0 elsewhere
stem(n, impulse, 'LineWidth', 3);
axis([-6 6 0 2]);
grid;
title("Discrete Unit Pulse");
