clc; clear all; close all
t = -1.5:0.005:1.5; %square wave duration
T = 1; %time period of square wave
T1 = 1/4; %duty cycle of square wave
w0 = 2*pi/T; %fundamental radian frequency of square wave
M = 10; %number of coefficients
k = -M:M; %2M+1 total coefficients to construct square wave
ak = sin(k*2*pi*(T1/T))./(k*pi);
ak(M+1) = 2*T1/T; % Manual correction for a0 ?> ak(M+1)
x = zeros(1,length(t));
for k = -M:M
x = x + ak(k+M+1)*exp(j*k*w0*t);
end
M = 20; %number of coefficients
k = -M:M; %2M+1 total coefficients to construct square wave
ak = sin(k*2*pi*(T1/T))./(k*pi);
ak(M+1) = 2*T1/T; % Manual correction for a0 ?> ak(M+1)
x2 = zeros(1,length(t));
for k = -M:M
x2 = x2 + ak(k+M+1)*exp(j*k*w0*t);
end
M = 100; %number of coefficients
k = -M:M; %2M+1 total coefficients to construct square wave
ak = sin(k*2*pi*(T1/T))./(k*pi);
ak(M+1) = 2*T1/T; % Manual correction for a0 ?> ak(M+1)
x3 = zeros(1,length(t));
for k = -M:M
x3 = x3 + ak(k+M+1)*exp(j*k*w0*t);
end
subplot(3,1,1)
plot(t,x,'lineWidth',2);
grid;
xlabel('t');
ylabel('x(t)');
title('Reconstruction from Fourier Series M = -10:10');
subplot(3,1,2)
plot(t,x2,'lineWidth',2);
grid;
xlabel('t');
ylabel('x(t)');
title('Reconstruction from Fourier Series M = -20:20');

subplot(3,1,3)
plot(t,x3,'lineWidth',2);
grid;
xlabel('t');
ylabel('x(t)');
title('Reconstruction from Fourier Series M = -100:100');

% ***************increasing the number of impulses results in increased nmr of harmonics  