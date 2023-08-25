%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem number: 1.1
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/9/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;		% close all windows
                            % clear variables, and clear screen

disp('Midterm Problem 1.1') 	% show Midterm Problem 1.1
disp('Jing-Hong Hu; 109550020');
while 1
    b = input("input b ");
    if b == 0
        disp("Thanks for playing")
        return;
    end
    c = input("input c ");
    if c == 0
        disp("Thanks for playing")
        return;
    end
    dx = -1;
    while dx < 0
        dx = input('input dx ');
        if dx < 0
            disp("dx must be a non-negative number’");
        elseif dx == 0
            dx = 0.5;
        end
    end
    x = -10:dx:10;
    y = abs(b)*cos(c./(cos(x)+1.01)) + c*sin(b*x)./(abs(sin(x))+0.1);
    set(gca,'FontSize', 15)
    plot(x,y,LineWidth=3);
    figure(1)
    hold on
end



