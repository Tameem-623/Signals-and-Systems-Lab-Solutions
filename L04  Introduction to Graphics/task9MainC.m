clc; clear; close all;

S = [2 1 4 5 3 1 2];

% Calling Cutom upsampling signals function
sampFact = input('Enter Sampling Factor: ');
sampType = input('Enter Sampling Type\n Avrg or Copy: ');

switch sampType
case 'Avrg'
    custom_us = upsampCAvrg(S,sampFact);
case 'Copy'
    custom_us = upsampCCopy(S,sampFact);
otherwise
    fprintf('Invalid grade\n' );
 end

% Original Signal 
subplot(2,1,1)
stem(S);
title('Original Signal')
xlabel('Sample Number')
ylabel('Signal Amplitude')

% DS DTS
subplot(2,1,2)
stem(custom_us);
title('Upsample Signal (Avrg Method)')
xlabel('Sample Number')
ylabel('Signal Amplitude')

