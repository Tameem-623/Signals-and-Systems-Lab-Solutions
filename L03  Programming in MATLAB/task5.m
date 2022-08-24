%  Task 5 
% Merging two if statements into a single if statement 
clc; clear; close all;
x = input('Enter x: ');
y = input('Enter y: ');
z = input('Enter z: ');

if (x > y & z < 5)
    w = x*y*z
else
    disp('Out of Range')
end

