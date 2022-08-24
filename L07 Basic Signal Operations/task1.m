clc; clear; close all;

% Signal
n = -10:10;
x1=[-ones(1,10) 0 ones(1,10)];

% Signal PLotting
stem(n,x1,'filled'); 
xlabel('sample #'); 
ylabel('signal amplitude'); 
title('Task 1'); 
axis([-10 10 -1 2])