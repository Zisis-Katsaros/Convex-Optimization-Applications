function [int_min, int_max, times_calc] = bisection(func, alpha, beta, epsilon, lamda)
    % Bisection algorithm for minimization
    %
    % Inputs: 
    % func: The given function f
    % alpha: The starting point of f
    % beta: The end point of f
    % epsilon: The constant ε used by the bisection method algorithm
    % lamda: The final width of the search interval
    %
    % Outputs:
    % int_min, int_max: The interval where the minimum of f is containted
    % times_calc: Total calculations of f needed 
    
    % Initialization
    f = func;
    a = alpha;
    b = beta;
    e = epsilon;
    l = lamda;
    times_calc = 0;
    
    while b-a >= l
        % Step 1
        x1 = (a+b)/2 - e;
        x2 = (a+b)/2 + e;    
        % Step 2
        times_calc = times_calc +2;
        if(f(x1) < f(x2))        
            b = x2;
        else
            a = x1;
        end
    end    
    int_min = a;
    int_max = b;
end