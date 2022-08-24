clc; clear; close all;

%square wave duration
t = -2:0.005:2;
%time period of square wave
T = 1;
%duty cycle of square wave
T1 = 1/4;
%fundamental radian frequency of square wave
w0 = 2 * pi / T;
%number of coefficients
M = 20;
x = zeros(1, length(t));

for k = -M:M; %2M+1 total coefficients to construct square wave

    if (mod(k, 2) == 0)
        ak = 1;
        x = x + ak * exp(j * k * w0 * t);
    else
        ak = 2;
        x = x + ak * exp(j * k * w0 * t);
    end

end

plot(t, x, 'lineWidth', 2);
grid;
xlabel('t');
ylabel('x(t)');
title('Reconstruction from Fourier Series, M=20');
