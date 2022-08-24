clc; clear; close all;

%  Task 4
%  Finding Particular value of C based on the value of
%   a in range 1 to 10

a = input('Enter a value: ');

if (1 <= a & a <= 10)

    if (a < 3)
        disp(a * a)
    elseif (3 <= a & a < 7)
        disp(a + 3)
    else
        disp(a)
    end

else
    disp('out of range')
end

