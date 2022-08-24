clc; clear; close all;

% FS coefficients of periodic square waves
k = -10:10;
T1 = 0.25;  %duty cycle
T = 1;   
ak = sin(k * 2 * pi * (T1 / T)) ./ (k * pi);
ak(11) = 2 * T1 / T; % Manual correction for a0 ?> ak(51)   means k = zero undefined (NaN)
t = -1.5:0.005:1.5;

w0 = 2 * pi / T;
xt = zeros(1, length(t));

% Amount of time shift
% t0 = 0.25;
t0 = 1.5;


% FS coefficients of the time shifted signal w0 = 2*pi/T;
bk = ak .* exp(-j * k * w0 * t0);
% bk = sin(k * 2 * pi * (T1 / T)) ./ (k * pi);


%construction of original square wave
for k = -10:10
    xt = xt + ak(k + 11) * exp(j * k * w0 * t);
end

% Reconstruction from bk's with 101 terms (M=50)
yt = zeros(1, length(t));

for k = -10:10
    yt = yt + bk(k + 11) * exp(j * k * w0 * t);
end

figure(1);
subplot(2, 1, 1);
plot(t, real(xt), 'lineWidth', 2);
xlabel('t');
ylabel('x(t)');
title('Periodic Square Wave with aks');
axis([-1.5 1.5 -0.2 1.2]);
grid;
subplot(2, 1, 2);
plot(t, real(yt), 'lineWidth', 2);
xlabel('t'); ylabel('y(t)=x(t-0.5)');
title('Reconstruction from bk''s with 101 terms'); axis([-1.5 1.5 -0.2 1.2]);
grid;
