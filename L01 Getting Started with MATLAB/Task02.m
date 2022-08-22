% script for proving trig expression 
clc
clear all 
close all
% starting the time
tic;
% Prompting the user to enter The values 
alpha  =  input('Enter alpha: ');
beta   =  input('Enter beta:  ');
LHS = sin(alpha) - sin(beta)
RHS = 2*sin((alpha - beta )/2)*cos((alpha +beta )/2)



disp("Hence Proved")
% Stopping the Timer
toc
