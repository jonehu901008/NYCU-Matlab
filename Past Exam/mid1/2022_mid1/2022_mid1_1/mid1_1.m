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
