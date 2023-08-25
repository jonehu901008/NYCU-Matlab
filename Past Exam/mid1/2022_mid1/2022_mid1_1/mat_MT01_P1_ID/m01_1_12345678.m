%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 1
% Problem number: 1.1
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/11/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;		% close all windows
                            % clear variables, and clear screen
disp('Midterm Problem 1.1') 	% show Midterm Problem 1.1
disp('Jing-Hong Hu; 109550020');
while 1
    coef = input("Please input [a b]:");
    a = coef(1);
    b = coef(2);
    if a ==0 && b == 0
        disp("Thanks for playing");
        return;
    end
    dx = -1;
    while dx < 0
        dx = input('input dx:');
        if dx < 0
            disp("dx must be a non-negative number’");
        elseif dx == 0
            dx = 0.25;
        end
    end
    x = -1:dx:1;
    y = a*sin(5*x).*cos(5*x./(sin(x)+2)) + cos(10*x).*exp(-abs(x.^3)/(b*b+1));
    set(gca,'FontSize', 30);
    plot(x,y,LineWidth=5);
    figure(1);
    hold on
end