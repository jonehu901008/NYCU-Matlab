%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 2
% Problem number: Example
% Student Name:  Jone Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science
% Date: 3/19/2022
% hw02_2_109550020
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clf; clear; clc;
disp("Problem 2");
fprintf('Student ID:109550020 Name:胡景竑\n');
x = -10:0.05:10;
while 1
    A = input("input [aMin, aMax]:");
    da = input("input da:");
    if da == 0
        disp("Thanks for playing")
        break;
    end
    clf;
    min = A(1);
    max = A(2);
    a = min:da:max;
    for a1 = a
        y = tanh(a1*x).*exp(-cos(x));
        plot(x,y);
        hold on
    end
end
clf; clear; clc;
disp("Problem 3");
fprintf('Student ID:109550020 Name:胡景竑\n');
x = -5:0.01:5;
while 1
    m = input("input m:");
    if m == -1 || m > 10 || m ~= round(m)
        disp('thanks for playing');
        break;
    end
    clf;
    y1 = sin(x);
    syms k;
    plot(x, y1,'LineWidth',4);
    hold on
    for n = 0:m
        y2 = zeros(1, length(x));
        for k = 0:n
            %disp(k)
            y2 = y2 + ((-1)^k)*(x.^(2*k+1))/factorial(2*k+1);
            %disp(y2)
        end
        plot(x, y2, 'LineWidth', 1);
        hold on
        ylim([-1.5, 1.5]);
    end
end