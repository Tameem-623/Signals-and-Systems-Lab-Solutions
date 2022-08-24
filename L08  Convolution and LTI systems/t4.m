clc
clear all
close all
% LTI System response 
h =[3 -1 2 1];
% Input Signal 
x =[2 4 6 4 2];
% Convultion 
y = conv(h, x);
% Ploting the input 
subplot(2,1,1)
stem(x);
title('Discrete Filter Input x[n]'); xlabel('index, n');
ylabel('Value, x[n]');
% Plotting the output 
subplot(2,1,2);
stem(y, 'r');
title('Discrete Filter Output y[n]'); xlabel('index, n');
ylabel('Value, y[n]');
