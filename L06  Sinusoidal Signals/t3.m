clc; clear; close all;

for x = 1:2 * pi;
    Signal(x) = exp(-x) * sin(8 * x);
end;

x = 1:2 * pi;
subplot(2, 1, 1);
stem(x, Signal);
title('Discrete-Time Signal');
xlabel('Sample #');
ylabel('Amplitude');
subplot(2, 1, 2);
plot(x, Signal);
title('Continuous-Time Signal');
xlabel('Time')
ylabel('Amplitude');
