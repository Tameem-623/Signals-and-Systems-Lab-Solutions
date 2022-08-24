clc; clear; close all;

t=0:0.05:4.4;
A=3;
p=-0.4;
w=2*p*(1250);
X=A*exp((i*w*t)+p);

% Plotting Real Part
subplot(2,1,1);
plot(t,real(X));
title('Real Part');
xlabel('Time');
ylabel('Amplitude');
grid

% Pllotting Imag Part 
subplot(2,1,2);
plot(t,imag(X));
title('Imaginary Part');
xlabel('Time');
ylabel('Amplitude');
grid on;
