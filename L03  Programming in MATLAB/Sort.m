function [sorted] = Sort(unsorted, size)
    %Sort - Sorting Algo
    %
    % Syntax: [sorted] = Sort(unsorted, size)

    for i = 1:size+1
        min = i;

        for j = i + 1:size

            if (unsorted(j) < unsorted(min))
                min = j;
                temp = unsorted(i);
                unsorted(i) = unsorted(min);
                unsorted(min) = temp;

            end
        end
    end
    sorted = unsorted;
end
