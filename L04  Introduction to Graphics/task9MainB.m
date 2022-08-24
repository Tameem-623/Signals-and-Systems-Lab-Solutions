clc; clear; close all;

S = [2 1 4 5 3 1 2];

% Calling Cutom upsampling signals function
sampFact = input('Enter Sampling Factor: ');
custom_us = upsampB(S,sampFact);

% Calling built in upsampling signals function
builtin_us = upsample(S,sampFact);

% Original Signal 
subplot(3,1,1)
stem(S);
title('Original Signal')
xlabel('Sample Number')
ylabel('Signal Amplitude')

% DS DTS
subplot(3,1,2)
stem(custom_us);
title('Custom upSampled Signal')
xlabel('Sample Number')
ylabel('Signal Amplitude')

% Built-in Command DS DTS
subplot(3,1,3)
stem(builtin_us);
title('Biult-in upSampled Signal')
xlabel('Sample Number')
ylabel('Signal Amplitude')
