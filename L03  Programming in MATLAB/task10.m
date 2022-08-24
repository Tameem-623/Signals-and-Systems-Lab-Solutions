% Task 10
%  Script for factoral of a A number
function [f] = task10(num)

    if (num == 0 || num == 1)
        f = 1;
    else
        f = (num * task10(num - 1));
    end
    
