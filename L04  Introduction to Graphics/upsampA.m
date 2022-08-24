% ********************Part a) ********************

function upsampled = upsamp(input)
    % upsamp - Custom upsampling function
    %
    % Syntax: [upsampled] = upsamp(input)

    j = 1;

    for i = 1:2 * length(input)

        if (mod(i, 2) == 0)
            upsampled(i) = 0;

        else

            upsampled(i) = input(j);

            j = j + 1;
        end

    end

end
