function [a, b] = Linear_Regression(x, y)
    % Ensure x and y are column vectors
    x = x(:);
    y = y(:);
    
    n = length(x); % Length of vector
    
    % Compute sums
    sumX = sum(x); % Sum of x vector
    sumY = sum(y); % Sum of y vector
    
    xy = x .* y; % Element-wise multiplication
    sumXY = sum(xy); % Sum of xy vector
    
    sumX2 = sum(x.^2); % Sum of x^2 vector
    sumY2 = sum(y.^2); % Sum of y^2 vector
    
    % Compute slope (a) and y-intercept (b)
    a = (n * sumXY - sumX * sumY) / (n * sumX2 - sumX^2); % Slope
    b = (sumY - a * sumX) / n; % Y-intercept
    
end
