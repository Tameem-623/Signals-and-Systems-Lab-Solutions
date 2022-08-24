clc; clear; close all;

% Take number of sinusoidal signals
num = input('Enter the Number of Sinusoids: ');
x1 = 0;
f = 5;
A=5;
t=-2:0.01:2;
for n = 1:num
    % Take Phases
    Phase=input('Enter Phase: ');

    x=A*cos(2*pi*f*t + Phase);
    subplot(num + 1, 1, n);
    plot(t, x);
    title('Sinsoidal Signal');
    ylabel('Amplitude');
    xlabel('Time');
    title('COS WAVE , Amp = 5 , FREQ = 3 Hz');
    % Sum the signal 
    x1 = x1 + x;
    grid;
end;

subplot(num + 1, 1, n + 1);
plot(t, x1);
title('SUM OF THE ABOVE COSINE SIGNALS');
ylabel('Amplitude');
xlabel('Time');
title('COS WAVE , Amp = 5 , FREQ = 3 Hz');
grid;

