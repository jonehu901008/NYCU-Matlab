%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 2
% Problem number: 1
% Student Name:  Jone Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science
% Date: 3/17/2022
% hw02_1_109550020
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clf; clear; clc;
disp("Problem 1");
fprintf('Student ID:109550020 Name:胡景竑\n');
x = -10:0.05:10;
while 1
    coef = input("input [A, B]:");
    A = coef(1);
    B = coef(2);
    if A == 0 && B == 0
        disp("Thanks for playing")
        break;
    end
    clf;
    a = A-10:2:A+10;
    b = B-10:2:B+10;
    for a1 = a
        for b1 = b
            y = a1.*sin(x) + b1.*tan(x/10);
            plot(x,y);
            hold on
        end
    end
    b = B-10:0.05:B+10;
    plot(x,y)
    hold on
end