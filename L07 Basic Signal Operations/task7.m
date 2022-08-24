clc; clear; close all;

% Signal
n=0:0.002:4;
x=sin(2*pi*1*n);
y = interp(x,2);

% PLotting the fisrt sigal
subplot(2,1,1);
plot(x,'linewidth',2); 
title('Original Signal'); 
xlabel('Time'); 
ylabel('Signal Amplitude'); 
grid;
% Plotting the Interpolated signal
subplot(2,1,2); 
plot(y,'linewidth',2); 
title('Interp signal'); 
xlabel('Time'); 
ylabel('Signal Amplitude');
grid;