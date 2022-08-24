%  Task 3
% Findinng a particular Value of C based on the input value of a
clc; clear; close all;

a = input('Enter Value of a: ');

b = 12

if (1 <= a & a <= 8)
    C = 4*a*b
elseif  (8< a & a <= 16)
   C =  a*b
else
    disp("Out of range Entry")
end    

