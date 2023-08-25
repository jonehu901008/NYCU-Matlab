%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 1
% Problem number: 4
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/9/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;		% close all windows
                            % clear variables, and clear screen

disp('Midterm Problem 1.4') 	% show Midterm Problem 1.4
disp('Jing-Hong Hu;109550020');
dx = 0.01;
x = -10:dx:10;
while 1
    u = input("Please input u in the interval [0, 1] ");
    if u == 0
        disp("Thanks for playing")
        return;
    end
    for w = 0.1:0.05:3
        hold off
        z1 = sin(x).*exp(-w*sin(x)) +  w*cos(x);
        z2 = (x.^2-2*x*w-3*w^2).*(abs(cos(2*x))+u);
        p = [1 -2*w -3*w^2];
        r = roots(p);
        r1 = round(r(2),2);
        r2 = round(r(1),2);
        y = z1.*cos(z2)./z2;
        x1 = -10:dx:r1;
        y1 = y(1:length(x1));
        x2 = r1+dx:dx:r2;
        y2 = y(length(x1)+1:length(x1)+length(x2));
        x3 = r2+dx:dx:10;
        y3 = y(length(x1)+length(x2)+1:end);
        plot(x1, y1,'LineWidth', 1, 'Color', 'blue')
        hold on
        plot(x2, y2,'LineWidth', 1, 'Color', 'red')
        plot(x3, y3,'LineWidth', 1, 'Color', 'yellow')
        axis([-10 10 -10 10]);
        figure(1);
        pause(0.15);
    end
end

