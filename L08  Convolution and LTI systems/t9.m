clc; clear; close all;

% Inputs
x1 = [2 -3 3 4 -2];
x2 = [4 2 3 -1 -2];
x3 = [3 5 -3 4];
% Association Law Verification
y = conv(x2, x3);
y1 = conv(y, x1);
subplot(4, 1, 1);
stem(y1);
title('Association Law Verification : L.H.S');
xlabel('index, n');
ylabel('Value, y[n]');
y2 = conv(x1, x2);
y3 = conv(y2, x3);
subplot(4, 1, 2);
stem(y3, 'r');
title('Association Law Verification : R.H.S');
xlabel('index, n');
ylabel('Value, y[n]');

%Commutative Law Verification
y4 = conv(x1, x2);
subplot(4, 1, 3);
stem(y4);
title('Commutative Law Verification : L.H.S');
xlabel('index, n');
ylabel('Value, y[n]');
y5 = conv(x2, x1);
subplot(4, 1, 4);
stem(y5, 'r');
title('Commutative Law Verification : R.H.S');
xlabel('index, n');
ylabel('Value, y[n]');
