clc 
clear all 
close all
t= -1:1/100:1; 
x1 = sin(2*pi*2*t);
subplot(3,1,1);
plot(t,x1);
xlabel('time'); 
ylabel('Amplitude'); 
title('sin(2*\pi*f*t)');
u = (t>=0); 
x2 = x1.*u;
subplot(3,1,2);
plot(t,u,'LineWidth',2); 
xlabel('time'); 
ylabel('Signal Amplitude'); 
title('Unit Step');
subplot(3,1,3);
plot(t,x2); 
xlabel('time')
ylabel('Amplitude');
title('causal : sin(2*\pi*f*t)');


