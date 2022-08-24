function SigPlot(orig_signal, sum_sig, product_sig)
%
% SigPlot - It takes the original signals and their sum and product as input 
% and plots them as:
% i) Separate Figures,
% ii) Single Figure overlapping all the signals, and
% iii) Single Figure with separate signal plots using subplots.

% Seperate Figures
figure(1)
plot(orig_signal);
figure(2)
plot(sum_sig);
figure(3)
plot(product_sig);

% Overlapping all the signals 
plot(orig_signal);
hold on;
plot(sum_sig);
hold on;
plot(product_sig);


% single figures using subplots
subplot(3,1,1)
plot(orig_signal);
title('Plot Number 1')
xlabel('Time Axis');
ylabel('Signal');

subplot(3,1,2)
plot(sum_sig);
title('Plot Number 2')
xlabel('Time Axis');
ylabel('Signal');

subplot(3,1,3)
plot(product_sig);
title('Plot Number 3')
xlabel('Time Axis');
ylabel('Signal');

end
