pkg load symbolic;
x = -10:0.01:10;

h = heaviside(x - 1) - heaviside(x - 5);
subplot(2,2,1);
plot(x,h, 'LineWidth', 3);
axis([-6 6 0 2]);
grid;
title("h(k)");

h = heaviside(-x - 1) - heaviside(-x - 5);
subplot(2,2,2);
plot(x,h, 'LineWidth', 3);
axis([-6 6 -0 2]);
grid;
title("h(n-k)");
xlabel("...     n-4      n-2      n      n+2      n+4     ...");

x = -6:0.01:6;              % Define your x range
h = double(x == 1);    % h is 1 where x==0, 0 elsewhere
subplot(2,2,3);
stem(x,h,'LineWidth',3);  % stem is best for impulse-like signals
axis([-6 6 -0 2]);
grid;
title('\delta(n-1)');


y = exp(-3 .* x) .* (x >= 0);
subplot(2,2,4);
plot(x, y, 'LineWidth', 3);
axis([-6 6 0 2]);
grid;
title('exp(-3n) u(t)');

