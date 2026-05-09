function task1(f, x_start, x_end, y_start, y_end, num_of_points)
    % Plots the handle function (Task 1 of Optimization Methods Exercise 2)
    %
    % Inputs:
    % f: Handle function f
    % x_start, x_end, y_start, y_end: View window
    % num_of_points: Number of points per axis
    %
    % Outputs:
    % -
    x1 = linspace(x_start, x_end, num_of_points); 
    x2 = linspace(y_start, y_end, num_of_points);
    [X1, X2] = meshgrid(x1, x2);
    Z = arrayfun(@(x, y) f([x, y]), X1, X2);
    figure;
    surf(X1, X2, Z);
    xlabel('x');
    ylabel('y');
    zlabel('f(x, y)');
    title('Surface Plot of f')
end