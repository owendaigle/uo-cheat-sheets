pkg load symbolic;
x = -10:0.01:10;

y = heaviside(x);
subplot(2,3,1);
plot(x,y, 'LineWidth', 3);
axis([-6 6 0 2]);
grid;
title("u(t)");

y = heaviside(-x);
subplot(2,3,2);
plot(x,y, 'LineWidth', 3);
axis([-6 6 0 2]);
grid;
title("u(-t) [Time Reversal]");

y = heaviside(x+2);
subplot(2,3,3);
plot(x,y, 'LineWidth', 3);
axis([-6 6 0 2]);
grid;
title("u(t+2) [Time Shift]");

y = 2.*heaviside(x+2);
subplot(2,3,4);
plot(x,y, 'LineWidth', 3);
axis([-6 6 0 2]);
grid;
title("2u(t+2)");

y = 1.*sin(x);
subplot(2,3,5);
plot(x,y, 'LineWidth', 3);
axis([-6 6 -2 2]);
grid;
title("sin(x)");

y = 1.*sin(2.*x+1);
subplot(2,3,6);
plot(x,y, 'LineWidth', 3);
axis([-6 6 -2 2]);
grid;
title("sin(2x+1) [Time Scaling]");
