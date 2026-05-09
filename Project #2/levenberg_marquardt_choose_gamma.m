function [x_k_arr, y_k_arr, num_of_iter, x_min] = levenberg_marquardt_choose_gamma(f, x0, y0, epsilon, gamma)
    % Levenberg-Marquardt method with constant gamma
    %
    % Inputs: 
    % f: Handle function f
    % x0, y0: Starting point
    % epsilon: Gradient norm threshold
    % gamma: Step size
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
    g = gamma;
    x = [x0, y0];
    I = eye(2);
    f_grad = grad_approx(f,x);
    f_hes = hes_approx(f,x);
    x_k_arr = [];
    y_k_arr = [];
    num_of_iter = 0;
    while (norm(f_grad) >= e) 
        % Step 2
        m = 1e-6;
        while(~is_pos_definite(f_hes + m*I))
           eigenvalues = eig(f_hes);
           m = max(abs(eigenvalues)) + 1e-6;
        end
        % Step 3
        delta = inv(f_hes + m*I);
        d = -delta*f_grad;
        d = transpose(d);
        % Step 5
        x = x + g*d;
        f_grad = grad_approx(f,x);
        f_hes = hes_approx(f, x);
        num_of_iter = num_of_iter + 1;
        x_k_arr = [x_k_arr, x(1)];
        y_k_arr = [y_k_arr, x(2)];
    end
    x_min = x;
    fprintf(['Minimum of f with starting points at (%.0f, %.0f) ' ...
        'using the Levenberg - Marquardt method, where gamma = %.2f: (%0.5f, %0.5f)\n'], x0, y0, gamma, x_min(1), x_min(2));
end