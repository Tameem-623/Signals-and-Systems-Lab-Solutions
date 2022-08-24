clc; clear; close all;

%  Task 1 part b)
x1 = [2 5 8 4 3]; 
x2 = [4 3 2 0 0];

disp('Addition : ')
for n = 1 : 5
    a(n) =  x1(n) + x2(n);
end
disp(a);

disp('Multiplication : ')
for n = 1 : 5
    b(n) =  x1(n) .* x2(n);
end
disp(b);

