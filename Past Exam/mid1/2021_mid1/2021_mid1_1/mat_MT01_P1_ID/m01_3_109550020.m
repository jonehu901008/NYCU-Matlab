%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem number: 1.2
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/9/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;		% close all windows
                            % clear variables, and clear screen

disp('Midterm Problem 1.2') 	% show Midterm Problem 1.1
disp('Jing-Hong Hu; 109550020');
x = -3*pi:0.02:3*pi;
z1 = sinh(x).*sin(x);
while 1
    N = input("input N inside [0, 20] ");
    if N == 0
        disp("Thanks for playing")
        return;
    end
    o = input("Please input option: 1) All Curves 2) One Curve ");
    clf;
    plot(x, z1, 'LineWidth', 7, 'Color', 'red')
    hold on
    z2 = 0;
    for n = 0:1:N
        a = x.^(2*n+1)/factorial(2*n+1);
        b = (-1)^(n)*x.^(2*n+1)/factorial(2*n+1);
        z2 = z2 + a.*b;
        if o == 1
            plot(x, z2, 'LineWidth', 3)
            pause(0.2);
        end
        axis([-3*pi 3*pi -20 20]);
        figure(1);
    end
    plot(x, z2, 'LineWidth', 3, 'Color', 'blue')
end
