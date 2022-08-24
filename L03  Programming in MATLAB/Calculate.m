function [cm, kg] = Calculate(in, lb)
% Calculate - determines the height in centimeters (cm) and mass in kilograms (kg) of a person
% from his height in inches (in.) and weight in pounds (lb).
%
% Syntax: [cm, kg] = Calculate(in, lb)

% It determines the height in centimeters (cm) and mass in kilograms (kg) of a person
% from his height in inches (in.) and weight in pounds (lb).

cm = in * 2.54;
kg = lb * 0.453;

end
