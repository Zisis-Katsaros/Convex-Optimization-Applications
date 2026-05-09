function [x_k_arr, y_k_arr, num_of_iter, x_min] = steepest_descent(f, x0, y0, epsilon)
    % Steepest descent method with gamma such that it minimizes f(x + g*d)
    %
    % Inputs: 
    % f: Handle function f
    % x0, y0: Starting point
    % epsilon: Gradient norm threshold
    %
    % Outputs: 
    % x_k_arr: Array containing the x value of the x_k vector in a given
    %          iteration
    % y_k_arr: Array containing the y value of the x_k vector in a given
    %          iteration
    % num_of_iter: Number of iterations
    % x_min: Minimum of f     
    %
    % Initialization
    e = epsilon;
    x = [x0, y0];
    f_grad = grad_approx(f, x);
    x_k_arr = [];
    y_k_arr = [];
    num_of_iter = 0;
    % Main Step
    while (norm(f_grad) >= e)
        d = -f_grad;
        d = transpose(d);
        % Calculation of gamma so that f(x + g*d) is minimized
        g = choose_gamma(f, x, d); 
        x = x + g*d;
        f_grad = grad_approx(f, x);
        x_k_arr = [x_k_arr, x(1)];
        y_k_arr = [y_k_arr, x(2)]; 
        num_of_iter = num_of_iter + 1;
    end 
    x_min = x;
    fprintf(['Minimum of f with starting points at (%.0f, %.0f) ' ...
        'using the Steepest Descent method: (%0.5f, %0.5f)\n'], x0, y0, x_min(1), x_min(2));
end    