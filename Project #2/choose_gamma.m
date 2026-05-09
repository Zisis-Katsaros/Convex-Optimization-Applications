function gamma = choose_gamma(f, x, d)
    % Outputs gamma value such that f(x + g*d) is minimized
    %
    % Inputs: 
    % f: Handle function f
    % x: Current point 
    % d: Search direction vector
    %
    % Outputs: 
    % gamma: gamma value
    f_gamma = @(g) f(x + g*d);
    gamma = fminbnd(f_gamma, 1e-8, 10);
end

