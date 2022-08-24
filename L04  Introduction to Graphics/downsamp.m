% ********************Part a) ********************

% function [downsampled] = downsamp(input)
%     % downsamp - Custom downsampling function
%     %
%     % Syntax: [downsampled] = downsamp(input)

%     j = 1;

%     for i = 1:length(input)
%         % checking for even , odd sample numbers
%         if (mod(i, 2) ~= 0)
%             downsampled(j) = input(i);
%             j = j + 1;
%         end

%     end
% end

% ********************Part b ********************
% Modififed function
function downsampled = downsamp(input, sampFactor)
    % downsamp - Custom downsampling function
    %
    % Syntax: downsampled = downsamp(input,sampFactor)

    j = 1;

    if (sampFactor > length(input))
        disp('Error! Cant downSample the input signal.');
        downsampled = 0;
    else

        for i = 1:length(input)

            if (i == 1 | i == sampFactor + 1)
                downsampled(j) = input(i)
                j = j + 1;
            end

            if (mod(i, sampFactor) == 0 & i ~= sampFactor)
                downsampled(j) = input(i)
                j = j + 1;
            end

        end

    end
