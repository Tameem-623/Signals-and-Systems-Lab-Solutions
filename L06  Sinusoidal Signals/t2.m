clc; clear; close all;

x = 0.4;

for n = 1:8;
    V(n) = sin(n * (pi * x));
end;

n = 1:8;

figure,plot(n, V);
grid;
xlabel('Time');
ylabel('Amplitude');
