clc; clear; close all;

for i=1:10
    V(i)=cos(i*(pi/4));
end;
t=1:10;
plot(t,V);
title('The Required Signal');
xlabel('Time');
ylabel('Signal Amplitude');
grid;