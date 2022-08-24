clc 
clear all 
close all
n=0:0.002:4;
x=sin(2*pi*1*n);
subplot(2,1,1);
plot(n,x,'linewidth',2); 
title('Original Signal'); 
xlabel('Time'); 
ylabel('Signal Amplitude'); 
% axis([13 4 ‐1 1]);
grid;
subplot(2,1,2); 
plot(n,2*x,'linewidth',2); 
title('Scaled signal'); 
xlabel('Time'); 
ylabel('Signal Amplitude');

% axis([‐3 4 ‐1 1]); 
grid;