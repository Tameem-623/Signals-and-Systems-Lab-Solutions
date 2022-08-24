clear, close all, clc
n = 0:0.1:10;
k = 5;
a = pi / 2;
x = k * exp(a * n * i);
% plot the real part
subplot(2, 2, 1)
stem(n, real(x), 'filled')
title('Real part of complex exp')
xlabel('sample #')
ylabel('signal amplitude')
grid
% plot the imaginary part
subplot(2, 2, 2)
stem(n, imag(x), 'filled')
title('Imaginary part of complex exp')
xlabel('sample #')
ylabel('signal amplitude')
grid

% PLotting Conjugate 
% plot the real part
subplot(2, 2, 3)
stem(n, real(conj(x)), 'filled')
title('Real part of complex Conj exp')
xlabel('sample #')
ylabel('signal amplitude')
grid
% plot the imaginary part
subplot(2, 2, 4)
stem(n, imag(conj(x)), 'filled')
title('Imaginary part of complex Conj exp')
xlabel('sample #')
ylabel('signal amplitude')
grid
