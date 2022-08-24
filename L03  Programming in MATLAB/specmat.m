function spec(Dimension)
    % Task 8
    % Special Square Matrix Generator

    for i = 1:Dimension

        for j = 1:Dimension

            if (i == 1 || j == 1)
                A(i, j) = 1;
            elseif ( A(i, j-1) + A(i-1, j) < 20)
                A(i, j) = A(i, j-1) + A(i-1, j);
            else
                A(i,j) = max(A(i, j-1),A(i-1, j));
            end
            
        end

    end
disp(A)