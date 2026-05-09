function [x_k_arr, y_k_arr, num_of_iter, x_min] = newton_min_armijo(f, x0, y0, epsilon)
    % Newton method with gamma chosen using the Armijo rule
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
    while (norm(f_grad) >= e)
       % Step 1
       f_grad = grad_approx(f, x);
       % Step 2
       f_hes = hes_approx(f,x);
       if (~is_pos_definite(f_hes))
           fprintf(['The hessian matrix of the handle function is not positive-definite. ' ...
               'The algorithm can not proceed any further.\n'])
           x_min = x;
           return;
       end
       % Step 3
       f_hes_inv = inv(f_hes);
       d = -f_hes_inv*f_grad;
       d = transpose(d);
       % Step 4
       g = armijo(f, f_grad, x, d);
       x = x + g*d;
       x_k_arr = [x_k_arr, x(1)];
       y_k_arr = [y_k_arr, x(2)]; 
       num_of_iter = num_of_iter + 1;
       % if num_of_iter > 200
       %     x_min = x;
       %     return;
       % end
    end
    x_min = x;
    fprintf(['Minimum of f with starting points at (%.0f, %.0f) ' ...
        'using the Newton method and the Armijo rule: (%0.5f, %0.5f)\n'], x0, y0, x_min(1), x_min(2));
end