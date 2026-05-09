function task4_a(f, x0, y0, epsilon, gamma)
    % Task 4a of Optimization Methods Exercise 2
    %
    % Inputs: 
    % f: The given function f
    % x0, y0: Starting point
    % epsilon: Gradient norm threshold
    % gamma: Step size
    %
    % Outsputs:
    % - 
    [x_k_arr, y_k_arr, num_of_iter, ~] = levenberg_marquardt_choose_gamma(f, x0, y0, epsilon, gamma);    
    arr = 1:num_of_iter;
    figure;
    plot(arr, x_k_arr, '-o');
    hold on;
    plot(arr, y_k_arr, '-o');
    xlabel('Number of iterations');
    ylabel('Convergence');
    title('Levenberg-Marquardt w/ const. gamma: Convergence vs Iterations');
    grid on;
end