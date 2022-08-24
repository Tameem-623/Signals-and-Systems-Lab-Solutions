clc; clear; close all;

n = -10:10; 
% original Signal
u = [zeros(1,10) ones(1,11)];

u_minus_1 = [zeros(1,11) ones(1,10)];

% RHS Signal
impulse = u - u_minus_1;

% Plotting the Signal 
% Subplot 1
subplot(3,1,1);
stem(n,u,'filled'); 
xlabel('sample #'); 
ylabel('signal amplitude'); 
title('Unit Step'); 
% Subplot 2
subplot(3,1,2);
stem(n,u_minus_1,'filled'); 
xlabel('sample #'); 
ylabel('signal amplitude'); 
title('U STep  Minus 1'); 
% Subplot 3
subplot(3,1,3);
stem(n,impulse,'filled'); 
xlabel('sample #'); 
ylabel('signal amplitude'); 
title('Unit impulse'); 