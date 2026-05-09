function [int_min, int_max, times_calc] = fibonacci_min(func, alpha, beta, epsilon, lamda)
    % Fibonacci algorithm for minimization
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

    fibs = fib_seq_until((b-a)/l);    
    n = length(fibs); % n selected so that Fn, so that Fn > (b-a)/l
   % fibs = [fibs, fibs(end) + fibs(end-1)]; % Calculation of Fibonacci sequence up to Fn, so that Fn > (b-a)/l

    
    x1 = a + (fibs(n-2)/fibs(n))*(b-a);
    x2 = a + (fibs(n-1)/fibs(n))*(b-a);
    f1 = f(x1);
    f2 = f(x2);
    times_calc = 2;  
    % Step 4
    for k = 1:n-3
        % Step 1
        if(f1 > f2)
            % Step 2
            a = x1;
            x1 = x2;
            f1 = f2;
            x2 = a + (fibs(n-k-1)/fibs(n-k))*(b-a);
            f2 = f(x2);
        else
            % Step 3
            b = x2;
            x2 = x1;
            f2 = f1;
            x1 = a + (fibs(n-k-2)/fibs(n-k))*(b-a);    
            f1 = f(x1);       
        end
         times_calc = times_calc + 1;
    end
    % Step 5
    x2 = x1 + e;
    f2 = f(x2);
    times_calc = times_calc + 1;
    if(f1 > f2)
        a = x1;
    else 
        b = x2;
    end
    int_min = a;
    int_max = b;
end        

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
