clc; clear; close all;

%  Task 2
% find all the elements in x that are
% greater than the corresponding elements in y.

x = [-3 0 0 2 6 8]
y = [-5 -2 0 3 4 10]
% The element position where there exist a greater element is shown with 1
disp('The index location where values are greater: ')
x > y

% To see the actual content of that index
disp('The values which are greater are: ')
for i = 1:size(x, 2)
    if (x(i) > y(i))
        disp(x(i))
    end
end

