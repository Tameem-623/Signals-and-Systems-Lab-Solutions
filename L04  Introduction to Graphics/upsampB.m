% ********************Part B ********************

function upsampled = upsamp(inputSignal, sampFactor)

    upsampled = [];
    index = 1;
    Zero = zeros(1, sampFactor - 1);

    for i = 1:2 * length(inputSignal)

        if (mod(i, 2) == 0)
            upsampled = [upsampled, Zero];
        else
            upsampled = [upsampled, inputSignal(index)];
            index = index + 1;
        end

    end

    