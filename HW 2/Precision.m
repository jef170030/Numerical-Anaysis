% Section 001, Problem 1.4.6

% The following program solves the problem of computing values of the
% function f(x) = sin(x) - 1 + cos(x) to nearly full machine precision for
% all x in the closed interval [0, pi/4]. Its function is to minimize
% possible loss of significance incurred by the computer's computations.

clc

format long


a = precision(0)
b = precision(pi/4)
c = sin(0) - 1 + cos(0)
d = sin(pi/4) - 1 + cos(pi/4)

function f = precision(x)
    % Computes machine-precise values for the expression sin(x) - 1 + cos(x)
    % over the interval [0, pi/4].
    f = sin(x) - 2*(sin(x/2))^2;    % this is the function obtained
                                    % using a trigonometric identity and 
                                    % rearranging accordingly
end

% Explanation of results: This function uses both "format long" and an
% equivalent expression for sin(x) - 1 + cos(x) to compute nearly full
% machine precise values. A few examples have been given to show example
% outputs. Note c and d are the direct function evaluations f(0) and
% f(pi/4) and included for comparison purposes.