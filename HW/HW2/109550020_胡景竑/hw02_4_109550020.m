%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 2
% Problem number: Example
% Student Name:  Jone Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science
% Date: 3/19/2022
% hw02_4_109550020
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clf; clear; clc;
disp("Problem 4");
fprintf('Student ID:109550020 Name:胡景竑\n');
x1 = -5:0.005:-2.005;
x2 = -1.995:0.005:6.995;
x3 = 7.005:0.005:10;
y = (5*x1.^2+2*x1+7)./(x1.^2-5*x1-14);
plot(x1, y, LineWidth=2, Color="red");
hold on
y = (5*x2.^2+2*x2+7)./(x2.^2-5*x2-14);
plot(x2, y, LineWidth=2, Color="blue");
hold on
y = (5*x3.^2+2*x3+7)./(x3.^2-5*x3-14);
plot(x3, y, LineWidth=2, Color="red");