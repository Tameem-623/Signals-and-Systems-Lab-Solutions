clc; clear; close all;

% Interval 
t = 0:.1:19;                         
xt = cos(2*pi*t/2);   
abs_xt_2 = abs(xt).^2;   
%Time Period   
T = 20;                            
delta_t = .1;   
% Calculating the power of the signal 
Power_of_the_Signal = (1/T)*(sum(abs_xt_2)*delta_t/T)                  
stem(t, xt);                            
xlabel('time, t');
ylabel('Amplitude, A');
title('Discrete Time Cosine');

