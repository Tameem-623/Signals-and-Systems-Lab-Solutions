clc; clear; close all;

t = -5:0.2:5; % duration of signal
% dc component for k=0
x0 = 1; 
% second harmonic components for k=2 and k=2
x2 = (exp(j*(pi/4)))*exp(j*(-2)*(2*pi/4)*t)+(exp(j*(pi/4)))*exp(j*(2)*(2*pi/4)*t);
y2 = x0 + x2; % sum of all components until second harmonic
% fourth harmonic components for k=?4 and k=4
x4 = (2*exp(j*(pi/3)))*exp(j*(-4)*(2*pi/3)*t)+(exp(j*(pi/3)))*exp(j*(4)*(2*pi/3)*t);
x = x0 + x2 + x4; % sum of all components until fourth harmonic
figure;
subplot(3,1,1);
stem(t,x2);
title('x2(t)');
subplot(3,1,2);
stem(t,x4);
title('x4(t)');
subplot(3,1,3);
stem(t,x);
title('x0(t)+x2(t)+x4(t)');
