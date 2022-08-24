clc ; 
clear all; 
close all; 
t=-2:0.01:2; 
x1=cos(2*pi*0.5*t); 


n = input('Enter Number of Sinusoids: ');
x2 = 0;
for i = 1:n
    subplot(n+1,1,i); 
    plot(t,x1,'linewidth',2); 
    grid; 
    ylabel('Amplitude'); 
    xlabel('Time'); 
    title('COS WAVE , AMPLITUDE = 1, FREQ = 0.5 HZ, Phase = 0 RADIAN');
    x2 = x2 + x1;
end


subplot(n+1,1,n+1);
plot(t,x2,'linewidth',2);
grid;
ylabel('Amplitude');
xlabel('Time');
title('SUM OF THE ABOVE COSINE SIGNALS');
