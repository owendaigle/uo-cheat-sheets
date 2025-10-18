pkg load symbolic;
x = -10:0.01:10;

y = cos(x);
subplot(2,2,1);
plot(x,y, 'LineWidth', 3);
axis([-6 6 -2 2]);
grid;
title("cos(t)");

y = cos(x+1);
subplot(2,2,2);
plot(x,y, 'LineWidth', 3);
axis([-6 6 -2 2]);
grid;
title("cos(t+1)");

y = cos(-x+1);
subplot(2,2,3);
plot(x,y, 'LineWidth', 3);
axis([-6 6 -2 2]);
grid;
title("cos(-t+1)");

y = cos(-(x/2)+1);
subplot(2,2,4);
plot(x,y, 'LineWidth', 3);
axis([-6 6 -2 2]);
grid;
title("cos(-t/2+1)");
