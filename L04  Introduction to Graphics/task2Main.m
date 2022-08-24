clc; clear; close all;

%  Taking Signal from the user and scalling factor 
origSignal =  input('Enter a DTS : ');
scaling_factor = input('Enter Scaling Factor: ');

% Scalling the signal times the inputted scaling factor
scaled_signal = ScaleSig(origSignal,scaling_factor);

%  Plotting the original and scaled signal
SigPlot2(origSignal,scaled_signal);
