function graph_st_des_proj_const_gamma(f, x0, y0, epsilon, gamma, s, a1, b1, a2, b2)
    % Creats Graph of Convergence versus number of iterations when using
    % the steepest descent method with projection where gamma is constant 
    %
    % Inputs: 
    % f: The given function f
    % x0, y0: Starting point
    % epsilon: Gradient norm threshold
    % gamma: Step size
    % s:
    % a1, b1: Constraints for x value
    % a2, b2: Constraints for y value
    %
    % Outsputs:
    % - 
    [x_k_arr, y_k_arr, num_of_iter, ~] = steepest_descent_choose_gamma_pr(f, x0, y0, epsilon, gamma, s, a1, b1, a2, b2);    
    arr = 1:num_of_iter;
    figure;
    plot(arr, x_k_arr, '-o');
    hold on;
    plot(arr, y_k_arr, '-o');
    xlabel('Number of iterations');
    ylabel('Convergence');
    title('Steepest Descent w/ Projection using const. gamma: Convergence vs Iterations');
    grid on;
end