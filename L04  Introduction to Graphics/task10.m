% Complementary Task10  

clc; clear; close all;

% set up 2-D plane by creating a -2:.2:2 sequence and copying it
% to all rows of x size(-2:.2:2) times and vice versa
[x, y] = meshgrid([-2:.2:2]);

% plot 3D on plane
Z = x .* exp(-x.^2 - y.^2);
figure

% surface plot, with gradient(Z) determining color distribution
surf(x, y, Z, gradient(Z))

% display color scale, can adjust location similarly to legend
colorbar
