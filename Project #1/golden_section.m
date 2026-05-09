function [int_min, int_max, times_calc] = golden_section(func, alpha, beta, lamda)
    % Golden Section algorithm for minimization
    %
    % Inputs: 
    % func: The given function f
    % alpha: The starting point of f
    % beta: The end point of f
    % lamda: The final width of the search interval
    %
    % Outputs:
    % int_min, int_max: The interval where the minimum of f is containted
    % times_calc: Total calculations of f needed
    
    % Initialization
    f = func;
    a = alpha;
    b = beta;
    l = lamda;
    g = 0.618;
    x1 = a + (1-g)*(b-a);
    x2 = a + g*(b-a);
    f1 = f(x1);
    f2 = f(x2);
    times_calc = 2;
    
    while b-a >= l
        % Step 1
        if (f1 > f2)
            %Step 2
            a = x1;
            x1 = x2;
            f1 = f2;
            x2 = a + g*(b-a);
            f2 = f(x2);
        else
            %Step 3
            b = x2;
            x2 = x1;
            f2 = f1;
            x1 = a + (1-g)*(b-a);
            f1 = f(x1);
        end        
        times_calc = times_calc + 1;
    end
    int_min = a;
    int_max = b;
end