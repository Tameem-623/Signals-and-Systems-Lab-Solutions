clc; clear; close all;
% Interval
t=0:0.01:0.50;
% Fundamental Freq
ff=25;
x1=(-8/(pi^2))*exp(i*(2*pi*ff*t));
for k=3:11:121
    fh=ff*k;
    x=(-8/(pi^2*k^2))*exp(i*(2*pi*fh*t));
    y=x1+x;
end
plot(t,real(y),'linewidth',3);
title('Triangular Wave with N=11');
ylabel('Amplitude');
xlabel('Time');
grid;  
