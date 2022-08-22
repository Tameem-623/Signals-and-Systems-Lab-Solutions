% Script for swapping the values of two variable without using third
% varibale 
clc
clear all 
close all
disp('Before Swapping : ')
t = clock; 
X = 0.12
Y = 1.12
disp('After Swapping : ')
X=X+Y;
Y=X-Y
X=X-Y
Time_Elapsed = etime(clock,t)
