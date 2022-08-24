clc;clear all; close all
t = -2:0.05:2; %square wave duration
T = 1; %time period of square wave
T1 = 1/4; %duty cycle of square wave
w0 = 2*pi/T; %fundamental radian frequency of square wave
% M = 60; %number of coefficients
x = zeros(1,length(t));
for k = -10:10 %2M+1 total coefficients to construct square wave
if(mod(k,2)==0)
ak = 1;
x = x + ak*exp(j*k*w0*t);ak1 = sin(k*2*pi*(T1/T))./(k*pi); 
else
ak = 2;
x = x + ak*exp(j*k*w0*t);
end
end 
x2 = zeros(1,length(t));
for k = -20:20 %2M+1 total coefficients to construct square wave
if(mod(k,2)==0)
ak = 1;
x2 = x2 + ak*exp(j*k*w0*t);
else
ak = 2;
x2 = x2 + ak*exp(j*k*w0*t);
end
end 
x3 = zeros(1,length(t));
for k = -100:100 %2M+1 total coefficients to construct square wave
if(mod(k,2)==0)
ak = 1;
x3 = x3 + ak*exp(j*k*w0*t);
else
ak = 2;
x3 = x3 + ak*exp(j*k*w0*t);
end
end 
subplot(3,1,1)
plot(t,x,'lineWidth',2);
grid;
xlabel('t');
ylabel('x(t)');
title('Reconstruction from Fourier Series, M=10');
subplot(3,1,2)
plot(t,x2,'lineWidth',2);
grid;
xlabel('t');
ylabel('x(t)');
title('Reconstruction from Fourier Series, M=20');
subplot(3,1,3)
plot(t,x3,'lineWidth',2);
grid;
xlabel('t');
ylabel('x(t)');
title('Reconstruction from Fourier Series, M=100');
