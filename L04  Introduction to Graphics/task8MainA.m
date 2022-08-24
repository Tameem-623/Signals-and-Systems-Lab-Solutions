clc; clear; close all;

S = [5 9 2 -5 -5 6 8 1 -1 6 11];

% Calling Cutom downsampling signals function
custom_ds = downsamp(S);

% Calling built in downsampling signals function
builtin_ds = downsample(S,2);

% Original Signal 
subplot(3,1,1)
stem(S);
title('Original Signal')
xlabel('Sample Number')
ylabel('Signal Amplitude')

% DS DTS
subplot(3,1,2)
stem(custom_ds);
title('Custom DownSampled Signal')
xlabel('Sample Number')
ylabel('Signal Amplitude')

% Built-in Command DS DTS
subplot(3,1,3)
stem(builtin_ds);
title('Biult-in DownSampled Signal')
xlabel('Sample Number')
ylabel('Signal Amplitude')
