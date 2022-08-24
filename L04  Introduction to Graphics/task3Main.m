clc; clear; close all;

n = [0 1 2 3 4];
x1 = [1 2 2 1 1];
x2 = [3 2 0 1 2];

disp('x1 has smaller amplitude than x2 at following corresponding samlpe numbers: ')

for n = 1:1:5

    if x1(n) < x2(n)
        disp(n)
    end

end

SigPlot3(x1, x2);
