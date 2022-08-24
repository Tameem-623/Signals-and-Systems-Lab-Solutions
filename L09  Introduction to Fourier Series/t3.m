clc; clear; close all;

% Interval
t = 1:0.001:8.999;
% Fundamental frequency 
ff = 0.5;

y = ((4 / pi) * sin(2 * pi * ff * t)) / t;

for k = 1:2:9
    fh = k * ff;
    x = (4 / (k * pi)) * sin(2 * pi * fh * t);
    y = y + x;
end

plot(t, y, 'linewidth', 1.5);
xlabel('Time');
ylabel('Amplitude');
