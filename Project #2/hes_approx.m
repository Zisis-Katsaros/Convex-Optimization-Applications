function hes = hes_approx(f, x)
    % Approximates the hessian matrix of a given function in a specific point
    %
    % Inputs: 
    % f: Handle function f
    % x: Point where the gradient of f is approximated
    %
    % Outputs: 
    % hes: Hessian of f approximated at x
    %
    % Initialization
    h=1e-5;
    n = length(x);
    hes = zeros(n, n);
    % Approximation    
    for i = 1:n
        for j = 1:n
            x_h1 = x;
            x_h2 = x;
            x_h3 = x;
            x_h4 = x;
            x_h1(i) = x_h1(i) + h; 
            x_h1(j) = x_h1(j) + h;
            x_h2(i) = x_h2(i) + h; 
            x_h2(j) = x_h2(j) - h;
            x_h3(i) = x_h3(i) - h; 
            x_h3(j) = x_h3(j) + h;
            x_h4(i) = x_h4(i) - h; 
            x_h4(j) = x_h4(j) - h;
            hes(i, j) = (f(x_h1) - f(x_h2) - f(x_h3) + f(x_h4)) / (4 * h^2);
        end
    end
end
