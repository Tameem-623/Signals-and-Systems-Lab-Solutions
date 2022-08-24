clc 
clear all 
close all
% Interval 
t= -1:1/10:1; 
% Singal 
x1 = sin(2*pi*2*t);
% Subplot 1
subplot(3,1,1);
stem(t,x1,'LineWidth',2);
xlabel('time'); 
ylabel('Amplitude'); 
title('sin(2*\pi*f*t)');
% Unit Step Signal 
u = (t>=0); 
x2 = x1.*u;
% Unit Step signal plot 
subplot(3,1,2);
stem(t,u,'LineWidth',2); 
xlabel('time'); 
ylabel('Signal Amplitude'); 
title('Unit Step');
% Ouput Signal 
subplot(3,1,3);
stem(t,x2,'LineWidth',2); 
xlabel('time')
ylabel('Amplitude');
title('causal : sin(2*\pi*f*t)');


