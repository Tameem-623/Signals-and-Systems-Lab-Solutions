function [lb, meters, months] = conversion(kg , ft, years)
%It takes weight(kg), height (ft)and age(yrs) as an arguments and 
%returns them in lb, meters months.
months = years*12;
meters = ft*0.3;
lb = kg*0.45;

