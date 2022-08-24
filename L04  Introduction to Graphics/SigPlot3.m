function SigPlot3(orig_signal1, orig_signal2)
    %
    % SigPlot - It takes the Sgnals and plots them as:
    % i) Separate Figures,
    % ii) Single Figure overlapping all the signals, and
    % iii) Single Figure with separate signal plots using subplots.

    % Seperate Figures
    figure(1)
    stem(orig_signal1);
    title('Sgnal 1')
    xlabel('Sample Number');
    ylabel('Amplitude');
    figure(2)
    stem(orig_signal2);
    title('SIgnal 2')
    xlabel('Sample Number');
    ylabel('Amplitude');

    % Overlapping all the signals
    stem(orig_signal1);
    hold on;
    stem(orig_signal2);
    title('SIgnal 2')
    xlabel('Sample Number');
    ylabel('Amplitude');

    % single figures using subplots
    subplot(2, 1, 1)
    stem(orig_signal1);
    title('Sgnal 1')
    xlabel('Sample Number');
    ylabel('Amplitude');

    subplot(2, 1, 2)
    stem(orig_signal2);
    title('SIgnal 2')
    xlabel('Sample Number');
    ylabel('Amplitude');

end
