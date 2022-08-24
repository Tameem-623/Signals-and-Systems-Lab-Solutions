clc; clear; close all;

% Take number of sinusoidal signals
num = input('Enter the Number of Sinusoids: ');
x1 = 0;
f = 0.5; Phase = 0;

for n = 1:num
    % Take Amplitude
    A = input('Enter amplitude: ');
    t = -2:0.01:2;
    x = A * cos(2 * pi * f * t + Phase);
    subplot(num + 1, 1, n);
    plot(t, x);
    title('Sinsoidal Signal');
    ylabel('Amplitude');
    xlabel('Time');
    title('COS WAVE , FREQ = 0.5 HZ, Phase = 0 RADIAN');
    % Sum the signal 
    x1 = x1 + x;
    grid;
end;

subplot(num + 1, 1, n + 1);
plot(t, x1);
title('SUM OF THE ABOVE COSINE SIGNALS');
ylabel('Amplitude');
xlabel('Time');
title('COS WAVE , FREQ = 0.5 HZ, Phase = 0 RADIAN');
grid;

