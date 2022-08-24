clc; clear; close all;

% ****************************************** ak *******************************************

% FS coefficients of periodic square waves
k = -50:50;
T1 = 0.25;  %duty cycle
T = 1;   
ak = sin(k * 2 * pi * (T1 / T)) ./ (k * pi);
ak(51) = 2 * T1 / T; % Manual correction for a0 ?> ak(51)   means k = zero undefined (NaN)
t = -1.5:0.005:1.5;             %duration of signal 
xt = zeros(1, length(t));       

for k = -50:50
    % ak(k + 51) taking positive values since it is index number which cant be negative
    xt = xt + ak(k + 51) * exp(j * k * 2 * pi / T * t);
    %                      [            xt             ]
    %                                      [  ff=1   ]
    %                                      [  the output will have same frequncy=1 just harmonics will be added]

end

% ****************************************** bk *******************************************
T1 = 0.125;
T = 1;
k = -50:50;
bk = sin(k * 2 * pi * (T1 / T)) ./ (k * pi);
bk(51) = 2 * T1 / T; % Manual correction for b0 ?> bk(51)
% bk (51) : 51 is index number  

yt = zeros(1, length(t));

for k = -50:50
    yt = yt + bk(k + 51) * exp(j * k * 2 * pi / T * t);
end

% *********************************************** linearity property ********************************
sum = xt + yt;
% Application of linearity property of FS
ck = ak + bk;


% ********************************************  Reconstruction with M=50 *************************
% making FS with new coeeficients which is ck 
w0 = 2 * pi / T;
zt = zeros(1, length(t));

for k = -50:50
    zt = zt + ck(k + 51) * exp(j * k * w0 * t);
end


figure(1);
plot(t, real(sum), 'lineWidth', 2);
xlabel('t');
ylabel('x(t)+y(t)');
title('original x(t)+y(t) with ak''s and bk''s with 101 terms');
grid;
figure(2);
plot(t, real(zt), 'lineWidth', 2);
xlabel('t');
ylabel('z(t)=x(t)+y(t)');
title('Reconstruction of y(t)from ak+bk''s with 101 terms');
grid;
