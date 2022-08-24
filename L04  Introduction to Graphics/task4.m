clc; clear; close all;

x = -15:1:15;
y1 = 2*x.^3;
x2 = -50:1:50;
y2 = 4*x2.^3;

% Plotting the graph
plot (x, y1, '+', x2, y2, '*');


xlabel('x-axis');
ylabel('y-axis');
