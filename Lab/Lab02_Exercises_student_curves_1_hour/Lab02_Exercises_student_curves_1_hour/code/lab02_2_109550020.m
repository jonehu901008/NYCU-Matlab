%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab Two
% Problem number: ?
% Student Name:  ?
% Student ID: ?
% Email address: ?
% Department: Computer Science, NYCU
% Date: ?
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

% show Lab Two Example
disp('Lab Two Problem 2')  
grid
while true
    a = input('Please input a:');
    if a == 0
        disp('Thanks for playing.')
        return
    elseif a >= -10 && a <= 10
        break
    end
end
dx = input('Please input dx:');
while true
    if dx == 0
        dx = 0.05;
        break
    elseif dx > 0 && dx <= 1
        break
    end
    dx = input('dx must be inside (0 1]');
end
x = -10:dx:10;
y = abs(x) + a*sin(x);
P = -10:0.025:10;
for px = P
    py = abs(px) + a*sin(px);
    axis([-10 10 -20 20]);
    plot(x, y, LineWidth=3, Color='blue')
    hold on
    plot(px, py, 'o', Color='r')
    pause(0.02)
    hold off
end