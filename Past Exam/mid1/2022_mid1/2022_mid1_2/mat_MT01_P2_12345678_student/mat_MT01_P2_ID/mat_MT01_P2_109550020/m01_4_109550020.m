%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 1
% Problem number: 4
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/18/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;		% close all windows
                            % clear variables, and clear screen

disp('Midterm Problem 1.4') 	% show Midterm Problem 1.4
disp('Jing-Hong Hu;109550020');
dx = 0.001;
x = -10:dx:10;
while 1
    d = input("Please input d in the interval [0, 4] ");
    if d == 0
        disp("Thanks for playing")
        return;
    elseif d < 0 || d > 4
        continue;
    end
    for s = 0.1:0.05:3
        hold off
        z1 = (cos(s*x) + sin(s*x)).*exp(-cos(x));
        z2 = (x+5).*(x-d).*(x-2*d).*exp(x.*sin(s*x));
        y = z1.*sin(x)./z2;
        x1 = -10:dx:-5;
        y1 = y(1:length(x1));
        x2 = -5+dx:dx:d;
        y2 = y(length(x1)+1:length(x1)+length(x2));
        x3 = d+dx:dx:2*d;
        y3 = y(length(x1)+length(x2)+1:length(x1)+length(x2)+length(x3));
        x4 = 2*d+dx:dx:10;
        y4 = y(length(x1)+length(x2)+length(x3)+1:end);
        plot(x1, y1,'LineWidth', 3, 'Color', 'blue')
        hold on
        plot(x2, y2,'LineWidth', 3, 'Color', 'red')
        plot(x3, y3,'LineWidth', 3, 'Color', 'yellow')
        plot(x4, y4,'LineWidth', 3, 'Color', 'magenta')
        axis([-10 10 -10 10]);
        figure(1);
        pause(0.2);
    end
end
