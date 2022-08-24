clc; clear; close all;

fs=1000; 
t=-3:1/fs:3; 
A=2; 
phase=pi/2; 
f=1;
x=A * sin(2*pi*f*t + phase);

% Sub Plot of signal without phase
subplot(2,1,1);
plot(t,x, 'linewidth', 2)
title('Shifted Continuous-Time Sine Wave: A sin(2*\pi*f*t + \phi)') 
xlabel('Time Index')
ylabel('Signal Amplitude') 
axis([t(1) t(end) -A A]) 
grid;

phase = 0;
x=A * cos(2*pi*f*t + phase);

% Sub Plot of shifted wave
subplot(2,1,2);
plot(t,x, 'linewidth', 2)
title('Continuous-Time Cos Wave: A sin(2*\pi*f*t + \phi)') 
xlabel('Time Index')
ylabel('Signal Amplitude') 
axis([t(1) t(end) -A A]) 
grid;
