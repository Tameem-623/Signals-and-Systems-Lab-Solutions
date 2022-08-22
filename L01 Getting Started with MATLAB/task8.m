% Script for normalization
clc
clear all 
close all
user_input = input('Enter 10 numbers: ')
maxi = max(user_input)
mini = min(user_input)
disp('The Normalized Input between 0 and 1 is:')
disp((user_input-mini)/(maxi-mini))