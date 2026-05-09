function grad = grad_approx(f, x)
    % Approximates gradient of a given function in a specific point
    %
    % Inputs: 
    % f: Handle function f
    % x: Point where the gradient of f is approximated
    %
    % Outputs: 
    % grad: Gradient of f approximated at x
    %
    % Initialization
    h=1e-5; 
    n = length(x);
    grad = zeros(n, 1);
    % Approximation
    for i = 1:n
        x_h = x;
        x_h(i) = x_h(i) + h;
        grad(i) = (f(x_h)-f(x)) / h;
    end
end
