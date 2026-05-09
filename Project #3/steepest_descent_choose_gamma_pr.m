function [x_k_arr, y_k_arr, num_of_iter, x_min] = steepest_descent_choose_gamma_pr(f, ...
    x0, y0, epsilon, gamma, s, a1, b1, a2, b2)
    % Steepest descent method with projection using constant gamma
    %
    % Inputs: 
    % f: Handle function f
    % x0, y0: Starting point
    % epsilon: Gradient norm threshold
    % gamma: Step size
    % s: !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    % a1, b1: Constraints for x value
    % a2, b2: Constraints for y value
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
    f_grad = grad_approx(f, x);
    x_k_arr = [];
    y_k_arr = [];
    num_of_iter = 0;
    max_iter = 1000;
    % Main Step
    while (norm(f_grad) >= e)
        x_bar = projection((x-s*f_grad), a1, b1, a2, b2);
        x = x + g*(x_bar-x);
        f_grad = grad_approx(f, x);
        num_of_iter = num_of_iter + 1;
        x_k_arr = [x_k_arr, x(1)];
        y_k_arr = [y_k_arr, x(2)]; 
        if (num_of_iter >= max_iter) % Terminate the algorithm   
            x_min = x;               % after 'max_iter' iteretions
            fprintf(['Steepest Descent method w/ Projection where ' ...
                'gamma = %.2f and s = %.1f, was not able to ' ...
                'locate minimum after %.0f iterations\n'], gamma, s, max_iter);                        
            return;             
        end                     
    end 
    x_min = x;
    fprintf(['Minimum of f with starting points at (%.0f, %.0f) constrained as ' ...
        'x1 in [%.0f, %.0f] & x2 in [%.0f, %.0f], using the Steepest Descent method w/ Projection, ' ...
        'where gamma = %.2f and s = %.1f : (%0.5f, %0.5f)\n'], x0, y0, a1, b1, a2, b2, gamma, s, x_min(1), x_min(2));
end    