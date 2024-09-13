% This is a script to test our linear regression function

% Define data
A = [1 2 3 4 5 6 7 8 9 10];
B = [1.2 1.8 2.6 3.2 3.8 3.9 5 5.7 6.2 7.3];

% Call the linear regression function
[m, c] = Linear_Regression(A, B);

% Define the range for x
x = 0:0.1:10; % Use the length of A to define the range

% Compute the corresponding y values
y = m .* x + c;

% Create the plot
figure;
plot(A, B, 'rx', 'MarkerSize', 10, 'LineWidth', 1.5); % Plot data points
hold on;
plot(x, y, 'b', 'LineWidth', 2); % Plot the regression line
hold off;

% Add titles and labels
title('Data Representation and Line Fitting');
xlabel('X (DATA)');
ylabel('Y (Predicted Output)');

% Add legend
legend('DATA', 'Line Fitting');

% Set axis limits
xlim([0 10]);
ylim([0 7]);

% Add grid
grid on;


