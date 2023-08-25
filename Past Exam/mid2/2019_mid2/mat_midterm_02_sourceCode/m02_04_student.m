%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm numer: Two
% Problem number: 4
% Student Name:  …
% Student ID: …
% Email address: …
% Department: 
% Date: ….
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

disp('Midterm Two')

while true
    n = input('Please input n:');
    if n>=0 && n <= 50000
        break;
    end
end
if (n==0)
    disp('Student ID ???????.');
    disp('Thanks for playing.');
    return;
end

disp('1) Plot the curves of y(1,1) and y(1,2) in one figure.');
disp('2) Plot two pairs of curves, (y(1,1) and y(1,2)) and (y(2,1) and y(2,2)).');
disp('3) Plot the four pairs of curves.');
op = input('Please input an option:');

dx = 0.01;
x = -5:dx:5;

h = figure;
dx = 0.01;
ymin = -15; ymax = 15;
xmin = -5; xmax = 5;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

axis([-5 5 -15 15]);
grid