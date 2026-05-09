function out = is_pos_definite(mat)
    % Checks if a given matrix is positive-definite
    %
    % Inputs: 
    % mat: Given matrix
    %
    % Outputs:
    % out: True if the given matrix is positive-definite, false if not
    %
    % Checks if the given matrix is square
    [rows, cols] = size(mat);
    if rows ~= cols
        out = false;
        return;
    end
    % Checks if the given matrix is symmetric
    if ~isequal(mat, mat')
        out = false;
        return;
    end
    % Checks if all minor determinants are positive
    out = true; 
    for k = 1:rows
        minor = mat(1:k, 1:k);
        if det(minor) <= 0
            out = false; 
            return;
        end
    end
end

