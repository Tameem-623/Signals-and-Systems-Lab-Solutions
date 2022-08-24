function Euler(input)
    % Euler     
    disp('Real : ')
    A = real(input);
    disp(A)
    disp('Angle: ')
    thetha = angle(input);
    disp(thetha)

    disp('Euler Format: ');
    c = (A * cos(thetha)) + (A * sin(thetha)*i );
    disp(c)
end
