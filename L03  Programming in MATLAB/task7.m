clc; clear; close all;

% Task 7
% Adding the two Matrixes using for Loop

A = [5 12 3; 9 6 5; 2 2 1] 
B = [2 1 9; 10 5 6; 3 4 2]
Sum  = [];

for i = 1:3
    for j = 1:3
        Sum(i, j) = A(i, j) + B(i, j);
    end
end
Sum
