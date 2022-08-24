clc; clear; close all;

t=-1:1/80:1;
A=5;
phase=pi/2;
f=3;
x1=A * sin(2*pi*f*t + phase);

subplot(2,1,1);
plot(t,x1, 'linewidth', 2);
title('Shifted Continuous-Time Sine Wave: A sin(2*\pi*f*t + \phi)') 
xlabel('Time Index')
ylabel('Signal Amplitude') 
axis([t(1) t(end) -A A]); 

phase=0;
x2=A * cos(2*pi*f*t + phase);
subplot(2,1,2);
plot(t,x2, 'linewidth', 2);
title('Continuous-Time Cos Wave: A sin(2*\pi*f*t + \phi)') 
xlabel('Time Index')
ylabel('Signal Amplitude') 
axis([t(1) t(end) -A A]) 