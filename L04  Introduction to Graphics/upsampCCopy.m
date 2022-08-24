%  ***************** PART C (Copy Method)***********************
function upsampled = upsampCCopy(inputSignal,sampFactor)
    upsampled = [];
    cpy = [];
    index = 1;
    for i = 1:2 * length(inputSignal)
        if (mod(i, 2) == 0)
            for j = 1 : sampFactor - 1
                cpy = [cpy,inputSignal(index-1)];
            end
            upsampled = [upsampled, cpy];
            cpy = [];
        else
            upsampled = [upsampled, inputSignal(index)];
            index = index + 1;
        end

    end
        
end