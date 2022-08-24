%  ***************** PART C Avrg Upsample ********************************
function upsampled = upsampCAvrg(inputSignal, sampFactor)
    upsampled = [];
    Avrg = [];
    index = 1;
    check = 0;
    for i = 1:2 * length(inputSignal)-1

        if (mod(i, 2) == 0)
            for j = 1:sampFactor - 1
                Avrg = [Avrg, (inputSignal(index) + inputSignal(index - 1))/2];
            end
            upsampled = [upsampled, Avrg];
            Avrg = [];
        else
            upsampled = [upsampled, inputSignal(index)];
            index = index + 1;
        end

    end

end
