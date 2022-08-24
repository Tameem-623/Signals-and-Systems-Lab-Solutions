clc 
clear all 
close all
t = -4:3; 

x1 = [5 3 1 8 2 6 4 1];
Signal = sig_causal(x1,t);

subplot(2,1,1);
stem(x1);
xlabel('time'); 
ylabel('Amplitude'); 
title('Non-Causal');

subplot(2,1,2);
stem(Signal); 
xlabel('time')
ylabel('Amplitude');
title('Causal');