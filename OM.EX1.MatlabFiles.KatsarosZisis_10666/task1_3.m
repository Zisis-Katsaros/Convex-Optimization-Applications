function task1_3(f, alpha, beta, epsilon, l_start, l_end, l_numOfPoints)
    % Task 1.3 of the 1st Optimization Methods Exercise
    %
    % Inputs: 
    % f: The given function f
    % alpha: The starting point of f
    % beta: The end point of f
    % epsilon: The constant ε used by the bisection method algorithm
    % l_start, l_end, l_numOfPoints: Parameters used to create an array of lamda values
    %
    % Outsputs:
    % - 

    lamda_arr = linspace(l_start, l_end, l_numOfPoints); % Creates an array of lamda values                                      
    times_calc_arr = zeros(size(lamda_arr)); % Creates an array where times_calc are to be stored
    int_min_arr = zeros(size(lamda_arr)); % Creates an array where int_min are to be stored
    int_max_arr = zeros(size(lamda_arr)); % Creates an array where int_max are to be stored                                                    
    
    for i = 1:length(lamda_arr)
        lamda = lamda_arr(i);
        [int_min, int_max, times_calc] = bisection(f, alpha, beta, epsilon, lamda);
        times_calc_arr(i) = times_calc;
        int_min_arr(i) = int_min;
        int_max_arr(i) = int_max;    
    end
    
    figure;
    plot(times_calc_arr,int_min_arr, '-o');
    hold on;
    plot(times_calc_arr,int_max_arr, '-o');
    xlabel('Calculations of f');
    ylabel('Interval [a, b]');
    title('Interval [a, b] versus calculations of f');
    grid on;
end