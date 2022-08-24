function [isfound] = search(array, size_of_array, key_to_find)
    %search - Searching algorithm
    %
    % Syntax: [isfound] = search(array, size_of_array, key_to_find)
    % isfound = 'NIL';
    for i = 1:size_of_array
        if (array(i) == key_to_find)
            isfound = 'Found';
            break
        else
            isfound = 'NOT Found';
        end
    end




