function task1_1(f, alpha, beta, lamda, e_start, e_end, e_numOfPoints)
    % Task 1.1 of the 1st Optimization Methods Exercise
    %
    % Inputs: 
    % f: The given function f
    % alpha: The starting point of f
    % beta: The end point of f
    % lamda: The final width of the search interval
    % e_start, e_end, e_numOfPoints: Parameters used to create an array of epsilon values 
    %
    % Outsputs:
    % - 

    epsilon_arr = linspace(e_start, e_end, e_numOfPoints); % Creates an array of epsilon values                                      
    times_calc_arr = zeros(size(epsilon_arr));  % Creates an array where times_calc are to be stored
    
    for i = 1:length(epsilon_arr)
        epsilon = epsilon_arr(i);
        [~, ~, times_calc] = bisection(f, alpha, beta, epsilon, lamda);
        times_calc_arr(i) = times_calc;
    end
    
    figure;
    plot(epsilon_arr, times_calc_arr, '-o');
    xlabel('Values of ε');
    ylabel('Calculations');
    title('Bisection: Calculations of f vs ε');
    grid on;
end