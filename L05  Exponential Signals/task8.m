clc; clear; close all;

n = 0:0.3:10;
X1 = 5 * exp(pi/4*n*i);
a = 0.5;
X2 = a * exp(n);
X3 = X1.*X2;
a = 2;
X4 = a * exp(n);
X5 = X1.*X4;

% Plotting Real Part for (0<a<1)
subplot(4,1,1);
stem(n,real(X3),'filled');
title('Real Part (0<a<1)');
xlabel('Sample');
ylabel('Amplitude');

% plotting Imaginery Part for (0<a<1) 
subplot(4,1,2);
stem(n,imag(X3),'filled');
title('Imaginary Part (0<a<1)');
xlabel('Sample');
ylabel('Amplitude');

% Plotting Imaginery part for (a>1)
subplot(4,1,3);
stem(n,real(X5),'filled');
title('Real Part (a>1)');
xlabel('Sample');
ylabel('Amplitude');

% Plotting imaginary part for (a>1)
subplot(4,1,4);
stem(n,imag(X5),'filled');
title('Imaginary Part (a>1)');
xlabel('Sample');
ylabel('Amplitude');