clc 
clear all 
close all
% Interval
t = -1:1/100:1; 
% Signal 
x1 = sin(2*pi*2*t);
% Original Plot 
subplot(3,1,1);
plot(t,x1);
xlabel('time'); 
ylabel('Amplitude'); 
title('sin(2*\pi*f*t)');
% Unit Step Reversd
u = (t<=0); 
% Required Signal 
x2 = x1.*u;
% Plotting 
subplot(3,1,2);
plot(t,u,'LineWidth',2); 
xlabel('time'); 
ylabel('Signal Amplitude'); 
title('Unit Step Reversed');
subplot(3,1,3);
plot(t,x2); 
xlabel('time')
ylabel('Amplitude');
title('Anti-causal : sin(2*\pi*f*t)');


