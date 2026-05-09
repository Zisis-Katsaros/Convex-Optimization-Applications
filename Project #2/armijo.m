function g = armijo(f, f_grad, x, d)
    % Armijo rule
    %
    % Inputs: 
    % f: Handle function f
    % f_grad: Gradient of f at x
    % x: Current point
    % d: Search direction vector
    a = 10; % Initial value of gamma
    b = 0.5; % Reduction factor
    s = 0.1; % Sensitivity 
    g = a;    
    while f(x + g*d) > f(x) + s*g*dot(f_grad, d)
            g = b*g;
    end
end

