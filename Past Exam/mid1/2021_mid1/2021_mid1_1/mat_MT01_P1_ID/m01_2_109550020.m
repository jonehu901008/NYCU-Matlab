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
while 1
    z = input("input z ");
    if z <= 0
        disp("Thanks for playing")
        return;
    end
    o = input("input an option ");
    if o == 1
        d = 3;
    else
        d = 50;
    end
    clf;
    W = 0:10:200;
    for w = W
        y = -50:0.1:50;
        a = sin(y).^2+1;
        b = 0.2*w*(y.*cos(y)+5)/2.5;
        c = -z.*(cos(exp(-y)) + 2);
        x1 = (-b+sqrt(b.^2-4*a.*c))./a*2;
        x2 = (-b-sqrt(b.^2-4*a.*c))./a*2;
        plot(x1,y,'LineWidth',3);
        plot(x2,y,'LineWidth',3);
        figure(1);
        axis([-d d -d d]);
        pause(0.05);
        hold on
    end
end
