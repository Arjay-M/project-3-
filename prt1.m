% System of Equations - Finding the Equation of a Parabola

% Ask the user for three (x,y) points
x1 = input('Enter x1:\n ');
y1 = input('Enter y1:\n ');
x2 = input('Enter x2:\n ');
y2 = input('Enter y2:\n ');
x3 = input('Enter x3:\n ');
y3 = input('Enter y3:\n ');

% Make sure all x-values are different
if x1 == x2 | x1 == x3 | x2 == x3
    fprintf('Error: the x-values must all be different.\n');
    return
end

% Set up the system A * coeff = y
A = [x1^2  x1  1;
     x2^2  x2  1;
     x3^2  x3  1];

y = [y1; y2; y3];

% Solve for [a; b; c]
coeff = A \ y;
a = coeff(1);
b = coeff(2);
c = coeff(3);

% Display the equation of the parabola
fprintf('\nThe equation of the parabola is:\n');
fprintf('y = %.2f x^2 + %.2f x + %.2f\n\n', a, b, c);

% Create x values for plotting the parabola
xPlot = -10:0.1:10;
yPlot = a*xPlot.^2 + b*xPlot + c;

% Plot the parabola
plot(xPlot, yPlot, 'b-');
hold on;

% Plot the three points entered by the user
xPoints = [x1 x2 x3];
yPoints = [y1 y2 y3];
plot(xPoints, yPoints, 'ro', 'MarkerFaceColor', 'r');

% Add title, labels, and grid
title('Parabola Through Three Points');
xlabel('x');
ylabel('y');
grid on;

hold off;
