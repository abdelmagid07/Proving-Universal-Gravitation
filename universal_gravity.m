% Universal Gravity Simulation and Data Linearization
% Abdel A.
% Calculates the gravitational force between two masses 
% at varying distances, plots the force, linearizes the data, and fits
% a line to verify the inverse-square law of gravitation.

clear;
close all;
clc;

% Define Constants and Parameters
R = 2:0.5:10;           % Distance between masses (meters)
G = 6.68e-11;           % Universal gravitational constant (Nm^2/kg^2)
m1 = 50;                % Mass 1 in kilograms
m2 = 75;                % Mass 2 in kilograms

% Calculate Gravitational Force for each distance using Newton's law:
% F = G * m1 * m2 / R^2
F = G * m1 * m2 ./ (R .^ 2);

% Plot Gravitational Force vs Distance
figure(1)
plot(R, F, 'm.', 'MarkerSize', 10)
title('Gravitational Force vs Distance')
xlabel('Distance between Masses (m)')
ylabel('Gravitational Force (N)')
grid on

% Linearize the data by plotting Force vs 1/(Distance^2)
invDistanceSquared = 1 ./ (R .^ 2);

% Plot the Linearized Data
figure(2)
plot(invDistanceSquared, F, 'm.', 'MarkerSize', 10)
title('Linearized Gravitational Force Data')
xlabel('Inverse of Distance Squared (1/m^2)')
ylabel('Gravitational Force (N)')
grid on

% Perform Linear Fit on the Linearized Data
P = polyfit(invDistanceSquared, F, 1); % First order polynomial fit (line)
slope = P(1);
yIntercept = P(2);

% Construct the fitted line values
yFit = slope * invDistanceSquared + yIntercept;

% Plot Linearized Data with Line of Best Fit
figure(3)
plot(invDistanceSquared, F, 'm.', 'MarkerSize', 10); hold on;
plot(invDistanceSquared, yFit, 'k-', 'LineWidth', 2);
title('Linearized Gravitational Force with Line of Best Fit')
xlabel('Inverse of Distance Squared (1/m^2)')
ylabel('Gravitational Force (N)')
legend('Data Points', 'Best Fit Line', 'Location', 'northwest')
grid on

% Calculate the expected product G*m1*m2 to compare with slope
expectedProduct = G * m1 * m2;

fprintf('Slope from linear fit: %.3e\n', slope);
fprintf('Expected product G*m1*m2: %.3e\n', expectedProduct);
fprintf('Difference: %.3e\n', abs(slope - expectedProduct));
