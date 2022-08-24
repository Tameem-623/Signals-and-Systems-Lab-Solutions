clc; clear; close all;
%  Task 15 

% Open a file 
op=fopen('weekdays.txt','wt');
% Write data to opened file
fprintf(op,'sunday\nMonday\ntuesday\nWednesday\n')
fprintf(op,'thursday\nFriday\nSaturday\n');
% close the file 
fclose(op);
clc

% Open a file 
op=fopen('task15_temp.m','wt');
% Write data to opened file
fprintf(op,"disp('Hello')");
% close the file 
fclose(op);
