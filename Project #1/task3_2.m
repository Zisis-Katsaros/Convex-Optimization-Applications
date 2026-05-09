function task3_2(f, alpha, beta, epsilon, l_start, l_end, l_numOfPoints)
    % Task 3.2 of the 1st Optimization Methods Exercise
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
    times_calc_arr = zeros(size(lamda_arr));  % Creates an array where times_calc are to be stored
    int_min_arr = zeros(size(lamda_arr));  % Creates an array where int_min are to be stored    
    int_max_arr = zeros(size(lamda_arr));  % Creates an array where int_max are to be stored                                                         
    
    for i = 1:length(lamda_arr)
        lamda = lamda_arr(i);
        [int_min, int_max, times_calc] = fibonacci_min(f, alpha, beta, epsilon, lamda);
        times_calc_arr(i) = times_calc;
        int_min_arr(i) = int_min;
        int_max_arr(i) = int_max;
    end    

    % figure;
    % plot(times_calc_arr,int_min_arr, '-o');
    % hold on;
    % plot(times_calc_arr,int_max_arr, '-o');
    % xlabel('Calculations of f');
    % ylabel('Interval [a, b]');
    % title('Fibonacci: Interval [a, b] vs calculations of f');
    % grid on;

    int_arr = int_max_arr - int_min_arr;
    figure;
    plot(times_calc_arr,int_arr, '-o');
    xlabel('Calculations of f');
    ylabel('(b-a)');
    title('Fibonacci: (b-a) vs calculations of f');
    grid on;

end