function graph_st_des_const_gamma(f, x0, y0, epsilon, gamma)
    % Creats Graph of Convergence versus number of iterations when using
    % the steepest descent method where gamma is constant 
    %
    % Inputs: 
    % f: The given function f
    % x0, y0: Starting point
    % epsilon: Gradient norm threshold
    % gamma: Step size
    %
    % Outsputs:
    % - 
    [x_k_arr, y_k_arr, num_of_iter, ~] = steepest_descent_choose_gamma(f, x0, y0, epsilon, gamma);    
    arr = 1:num_of_iter;
    figure;
    plot(arr, x_k_arr, '-o');
    hold on;
    plot(arr, y_k_arr, '-o');
    xlabel('Number of iterations');
    ylabel('Convergence');
    title('Steepest Descent w/ const. gamma: Convergence vs Iterations');
    grid on;
end