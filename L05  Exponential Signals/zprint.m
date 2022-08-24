function zprint(input)
    %zprint - Basic operations on Complex Numbers
    %
    % Syntax:  = zprint(input)
    %
    %
    disp('Real Part:')
    disp(real(input))
    disp('Imag Part: ')
    disp(imag(input))
    disp('Abs: ')
    disp(abs(input))
    disp('angle in radians: ')
    disp(angle(input))
    disp('Angle in degrees: ')
    disp(angle(input) * 57.5)
 
    disp('\n\n')
    [i,c]=Conj(input);
    disp('Inverse: ')
    disp(i)
    disp('Conjugate : ')
    disp(c)


end
