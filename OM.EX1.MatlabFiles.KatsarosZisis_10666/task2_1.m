function task2_1(f, alpha, beta, l_start, l_end, l_numOfPoints)
    % Task 2.1 of the 1st Optimization Methods Exercise
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
    times_calc_arr = zeros(size(lamda_arr)); % Creates an array where times_calc are to be stored
    
    for i = 1:length(lamda_arr)
        lamda = lamda_arr(i);       
        [~, ~, times_calc] = golden_section(f, alpha, beta, lamda);
        times_calc_arr(i) = times_calc;
    end
    
    figure;
    plot(lamda_arr, times_calc_arr, '-o');
    xlabel('Values of l');
    ylabel('Calculations');
    title('Golden Section: Calculations of f vs l');
    grid on;
end