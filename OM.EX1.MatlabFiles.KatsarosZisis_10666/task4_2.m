function task4_2(f, alpha, beta, l_start, l_end, l_numOfPoints)
    % Task 4.2 of the 1st Optimization Methods Exercise
    %
    % Inputs: 
    % f: The given function f
    % alpha: The starting point of f
    % beta: The end point of f
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
        n = nfor_der_b(alpha, beta, lamda); % Selects maximum n so that (1/2)^n <= l/(b-a)
        [int_min, int_max, times_calc] = bisection_der(f, alpha, beta, lamda, n);
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
    title('Bisec. w/ Derivatives: Interval [a, b] vs calculations of f');
    grid on;
end