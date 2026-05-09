function fibs = fib_seq_until(n)
    % Calculates Fibonacci sequence up to Fn
    %
    % Inputs: 
    % n: The n-th number of the sequence
    %
    % Outputs:
    % fibs: An array containing the numbers of the Fibonacci sequence up to Fn
 
    fibs = [1, 1];
    while fibs(end) <= n
        fibs = [fibs, fibs(end) + fibs(end-1)];
    end
end