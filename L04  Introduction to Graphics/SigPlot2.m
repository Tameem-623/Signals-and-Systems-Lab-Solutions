function SigPlot2(orig_signal, scaled_signal)
%
% SigPlot - It takes the original signals and scaled signal and plots them as:
% i) Separate Figures,
% ii) Single Figure overlapping all the signals, and
% iii) Single Figure with separate signal plots using subplots.

% Seperate Figures
figure(1)
stem(orig_signal);
title('Original Signal')
xlabel('X Axis');
ylabel('Amplitude');
figure(2)
stem(scaled_signal);
title('Scaled SIgnal')
xlabel('X Axis');
ylabel('Amplitude');

% Overlapping all the signals 
stem(orig_signal);
hold on;
stem(scaled_signal);
title('Scaled SIgnal')
xlabel('X Axis');
ylabel('Amplitude');


% single figures using subplots
subplot(2,1,1)
stem(orig_signal);
title('Original Signal')
xlabel('X Axis');
ylabel('Amplitude');

subplot(2,1,2)
stem(scaled_signal);
title('Scaled SIgnal')
xlabel('X Axis');
ylabel('Amplitude');

end
