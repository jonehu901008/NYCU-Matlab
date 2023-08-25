%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 1
% Problem number: 1.3
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/11/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;		% close all windows
                            % clear variables, and clear screen

disp('Midterm Problem 1.3') 	% show Midterm Problem 1.3
disp('Jing-Hong Hu; 109550020');
x = -3:0.02:3;
z1 = cos(5*x).*cosh(x);
while 1
    N = input("Please input N inside [0, 10]:");
    if N == 0
        disp("Thanks for playing")
        return;
    end
    o = input("Please input option: 1) All Curves 2) One Curve ");
    clf;
    plot(x, z1, 'LineWidth', 7, 'Color', [0.8500 0.325 0.0980])
    hold on
    z2 = 0;
    for n = 0:1:N
        a = (-1^n)*(5*x).^(2*n)/factorial(2*n);
        b =            x.^(2*n)/factorial(2*n);
        z2 = z2 + a.*b;
        if o == 1
            plot(x, z2, 'LineWidth', 3)
            pause(0.2);
        end
        axis([-3 3 -10 10]);
        figure(1);
    end
    plot(x, z2, 'LineWidth', 3)
end
