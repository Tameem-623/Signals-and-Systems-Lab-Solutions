clc; clear; close all;
% LTI System Response 
h1=[1 3 2 1];
h2=[1 1 2];
% Input 
x = [1 4 3 2];
% Conv and input of cascaded system 
y = conv (h1, x);
% Conv of prev conv and h2
z = conv(h2, y);

% Plotting 
subplot(3,1,1)
stem(x);
title('Input x[n]');
xlabel('index, n');
ylabel('Value, x[n]'); 
subplot(3,1,2)
stem(y);
title('OUtput h1[n]');
xlabel('index, n');
ylabel('Value'); 
subplot(3,1,3)
stem(z);
title('Output h2[n]');
xlabel('index, n');
ylabel('Value'); 

