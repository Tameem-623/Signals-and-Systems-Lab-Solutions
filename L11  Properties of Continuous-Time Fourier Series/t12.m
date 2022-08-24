% a-1 *x(t)1

% time reversal : when we reeverse coeefifnt of FS we get Reverse version of FS

clc; clear; close all;

% ****************************************** ak *******************************************

% FS coefficients of periodic square waves
k = -10:10;
T1 = 0.25;  %duty cycle
T = 1;   
ak = sin(k * 2 * pi * (T1 / T)) ./ (k * pi);
ak(11) = 2 * T1 / T;
t = -1.5:0.005:1.5;             %duration of signal 
xt = zeros(1, length(t));       
T1 = 0.125;
T = 1;
k = -10:10;
w0 = 2 * pi / T;
% time shifting by adding odd shift to the even signal thus making it odd so reversal can be seen s 
bk =  fliplr(ak).* exp(-j * k * w0 * 0.5);; 

for k = -10:10

    xt = xt + ak(k + 11) * exp(j * k * 2 * pi / T * t);
end

% ****************************************** flipped bk *******************************************
% T1 = 0.125;
% T = 1;
% k = -10:10;
% w0 = 2 * pi / T;
% % time shifting by adding odd shift to the even signal thus making it odd so reversal can be seen s 
% bk =  fliplr(ak).* exp(-j * k * w0 * 0.5);; 
bk(11) = 2 * T1 / T;  

yt = zeros(1, length(t));
for k = -10:10
    yt = yt + bk(k + 11) * exp(j * k * 2 * pi / T * t);
end

figure(1);
plot(t, xt, 'lineWidth', 2);
xlabel('t');
ylabel('y');
title('original x(t)');
grid;
figure(2);
plot(-t,yt, 'lineWidth', 2);
xlabel('t');
ylabel('y');
title('xt()');
grid;
