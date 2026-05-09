function out = nfor_der_b(alpha, beta, lamda)
    % Outputs maximum n to be used by the bisection method for minimization with use of
    % derivatives for given alpha, beta and l values
    %
    % Inputs: 
    % alpha: The starting point of f
    % beta: The end point of f
    % lamda: The final width of the search interval
    %
    % Outputs: 
    % n: maximum n

    n = 1;
    a = alpha;
    b = beta;
    l = lamda;
    while ((1/2)^n > l/(b-a))
        n = n+1;
    end
    out = n;
end