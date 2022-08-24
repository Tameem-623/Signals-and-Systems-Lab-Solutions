clc; clear; close all;
% Input 
X=[1 3 2 1];
% LTI System Response 
H=[1 1 2];
% Convultion 
y = conv(H, X);
% Again Convultion w.r.t to the
% output of the first conv
z = conv(X, H);
% Plotting 
subplot(2,1,1)
stem(y);
title(' H[n] * X[n]');
xlabel('index, n');
ylabel('Value, x[n]');

subplot(2,1,2);
stem(z, 'r');
title('X[n] * H[n]'); 
xlabel('index, n');
ylabel('Ampitude');
 



