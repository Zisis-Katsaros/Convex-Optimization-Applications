function task4_1(f, alpha, beta, l_start, l_end, l_numOfPoints)
    % Task 4.1 of the 1st Optimization Methods Exercise
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
    
    for i = 1:length(lamda_arr)
        lamda = lamda_arr(i);     
        n = nfor_der_b(alpha, beta, lamda); % Selects maximum n so that (1/2)^n <= l/(b-a)
        [~, ~, times_calc] = bisection_der(f, alpha, beta, lamda, n);
        times_calc_arr(i) = times_calc;
    end
    
    figure;
    plot(lamda_arr, times_calc_arr, '-o');
    xlabel('Values of l');
    ylabel('Calculations');
    title('Bisec. w/ Derivatives: Calculations of f vs l');
    grid on;
end