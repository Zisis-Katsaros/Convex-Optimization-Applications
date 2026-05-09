function [int_min, int_max, times_calc] = bisection_der(func, alpha, beta, lamda, n)
    % Bisection algorithm for minimization with use of derivatives 
    %
    % Inputs: 
    % func: The given function f
    % alpha: The starting point of f
    % beta: The end point of f
    % lamda: The final width of the search interval
    % n: Selected so that (1/2)^n <= l/(b-a)
    %
    % Outputs:
    % int_min, int_max: The interval where the minimum of f is containted
    % times_calc: Total calculations of f needed 
    
    % Initialization
    f = func;
    a = alpha;
    b = beta;
    l = lamda;
    h = 1e-5; 
    f_der =@(x) (f(x + h) - f(x - h)) / (2 * h);
    times_calc = 2;
    % Step 4
    for k = 1:n-1
        % Step 1
        xk = (a+b)/2;
        fxk = f_der(xk);
        times_calc = times_calc + 2
        if(fxk == 0)
            int_min = xk;
            int_max = xk;
            return;
        elseif(fxk > 0)
            % Step 2
            b = xk;
        else
            % Step 3
            a = xk;
        end    
    end
    int_min = a;
    int_max = b;
end