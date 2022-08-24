% Task 11 
%  Addition of Two Vectors taken from user in a while loop
i = 1;
while i <= 4
    V1(1, i) = input('Enter Value for Vector1: ');
    V2(1, i) = input('Enter Value for Vector2: ');
    V3(1, i) = ((V1(1, i)^2) + (V2(1, i)^2));
    i = i + 1;
end
V1, V2, V3