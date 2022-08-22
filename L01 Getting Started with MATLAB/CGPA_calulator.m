% Script for Calculating CGPA
clc
clear all 
close all
g_points = {};
c_hours = {};
disp('======================')
disp('LA: ')
g_points = [g_points, input('   Grade Points: ')];
c_hours = [c_hours, input('   Credit Hours: ')];
disp('OOP: ')
g_points = [g_points, input('   Grade Points: ')];
c_hours = [c_hours, input('   Credit Hours: ')];
disp('CS-II: ')
g_points = [g_points, input('   Grade Points: ')];
c_hours = [c_hours, input('   Credit Hours: ')];
disp('DLD: ')
g_points = [g_points, input('   Grade Points: ')];
c_hours = [c_hours, input('   Credit Hours: ')];
disp('CV: ')
g_points = [g_points, input('   Grade Points: ')];
c_hours = [c_hours, input('   Credit Hours: ')];
disp('DLD Lab: ')
g_points = [g_points, input('   Grade Points: ')];
c_hours = [c_hours, input('   Credit Hours: ')];
disp('CS-II Lab: ')
g_points = [g_points, input('   Grade Points: ')];
c_hours = [c_hours, input('   Credit Hours: ')];
disp('OOP Lab: ')
g_points = [g_points, input('   Grade Points: ')];
c_hours = [c_hours, input('   Credit Hours: ')];
gp = cell2mat(g_points);
cp = cell2mat(c_hours);
CGPA = sum(cp.*gp)/sum(cp)
if CGPA == 4
    disp('Grade: A')
elseif CGPA >= 3.67
    disp('Grade: A-')
elseif CGPA >= 3.33
    disp('Grade: B+')
elseif CGPA >= 3.00
    disp('B')
elseif CGPA >= 2.67
    disp('Grade: B-')
elseif CGPA >= 2.33
    disp('Grade: C+')
elseif CGPA >= 2.00
    disp('Grade: C')
elseif CGPA >= 1.67
    disp('Grade: C-')
elseif CGPA >= 1.33
    disp('Grade: D+')
elseif CGPA >= 1.00
    disp('Grade: D')
else
    disp('Grade: F')
end
disp('======================')