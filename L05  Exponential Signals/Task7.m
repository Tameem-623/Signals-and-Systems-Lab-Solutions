clc; clear; close all;

n = 0:0.1:10;
a = 0.7;
x = a * exp(n);
% SubPlot 1.1
subplot(2,2,1);
stem(n,real(x),'filled');
title('Discrete (a=0.7)');
xlabel('Sample');
ylabel('Amplitude');
% SubPlot 1.2
subplot(2,2,2);
plot(n,real(x));
title('Continuous (a=0.7)');
xlabel('Time');
ylabel('Amplitude');

% SubPlot 2.1
a = 1.3;
x = a * exp(n);
subplot(2,2,3);
stem(n,real(x),'filled');
title('Discrete (a=1.3)');
xlabel('Sample');
ylabel('Amplitude');
% SubPlot 2.2 
subplot(2,2,4);
plot(n,real(x));
title('Continuous (a=1.3)');
xlabel('Time');
ylabel('Amplitude');

