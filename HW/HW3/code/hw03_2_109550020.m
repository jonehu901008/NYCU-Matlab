%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 3
% Problem number: 2
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/19/2022
% hw03_2_109550020
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;		% close all windows
                            % clear variables, and clear screen

disp('Problem 2') 	% Problem 2
disp('109550020;Jing-Hong Hu');
for x = 0:0.01:2*pi
    theta = 0:0.01:x;
    r = sin(2*theta).*cos(2*theta);
    [x1, y1] = pol2cart(theta, r);
    polar(theta, r)
    patch(x1, y1, 'y')
    pause(0.01)
end

