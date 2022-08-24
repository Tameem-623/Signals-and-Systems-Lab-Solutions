function Fib(N)
    % Fib - Fibonacci sequence is a tile of squares whose side lengths 
    % are successive or each number is the sum of the previous number.
    %
    % Syntax:  Fib(input)

    first=0;
    second=1;
    disp('Fibonacci Sequence is: ')

    for i = 1:N
        disp(first);
        next=first+second;
        first=second;
        second=next;
    end
