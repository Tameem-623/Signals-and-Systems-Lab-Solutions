clc; clear; close all;

% Task 12
% Testing the working of the Commands
A = [1 2 3; 4 5 6; 7 8 9]
B = [1 2 3; 4 5 6; 7 8 9]

disp('**********~A **********:')
disp(~A)

disp('**********A & B**********:')
disp(A & B)

disp('**********A & ~B**********:')
disp(A & ~B)

disp('**********A | B**********:')
disp(A | B)

disp('**********A | ~A**********:')
disp(A | ~A)

% *************** Testing on other matrix ***************** 

C = [4 5 6; 1 99 4; 56 5 3]
D = [4 6 45; 3 56 35; 4 6 6]
disp('~A:')
disp(~A)

disp('A & B:')
disp(A & B)

disp('A & ~B:')
disp(A & ~B)

disp('A | B:')
disp(A | B)

disp('A | ~A:')
disp(A | ~A)

