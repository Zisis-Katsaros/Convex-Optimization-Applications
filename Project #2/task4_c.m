function task4_c(f, x0, y0, epsilon)
    % Task 4c of Optimization Methods Exercise 2
    %
    % Inputs: 
    % f: The given function f
    % x0, y0: Starting point
    % epsilon: Gradient norm threshold
    %
    % Outsputs:
    % - 
    [x_k_arr, y_k_arr, num_of_iter, ~] = levenberg_marquardt_armijo(f, x0, y0, epsilon);    
    arr = 1:num_of_iter;
    figure;
    plot(arr, x_k_arr, '-o');
    hold on;
    plot(arr, y_k_arr, '-o');
    xlabel('Number of iterations');
    ylabel('Convergence');
    title('Levenberg-Marquardt w/ Armijo rule: Convergence vs Iterations');
    grid on;
end