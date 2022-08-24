function AmpScale
    % AmpScale - The function saves and conts the number of
    % samples the signals exceeds threshold limit.
    % Syntax: AmpScale

    % Taking input from user
    S = input('Enter DTS: ');
    T = input('Enter Threshold: ');

    % Counting the threshold limits voilation
    count = 0;

    for i = 1:length(S)

        if (S(i) > T(1) | S(i) < T(2))
            count = count + 1;
            % making those values which are exceeding threshold equal to zero
            S(i) = 0;
        end

    end

    disp('The number of samples greater than T or less than -T are: ')
    disp(count);

    % plotting the signal
    stem(S);
end
