%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 2
% Problem number: Example
% Student Name:  Jone Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science
% Date: 3/19/2022
% hw02_5_109550020
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clf; clear; clc;
disp("Problem 5");
fprintf('Student ID:109550020 Name:胡景竑\n');clear; clc; clf;
dt = 1/30;
p0 = 10; v0 = 0; t0 = 0; g = -9.81; k = 0.5;
tmax = 10;
figure, hold on
P = []; V = []; T = [];
p = p0; v = v0; t = t0;
while t < tmax
    if p <= 0
        p = 0; v = -0.9*v;
    end
    V = [V, v];
    P = [P, p];
    T = [T, t];
    p = p + k*v*dt;
    v = v + g*dt;
    t = t + dt;
end
figure, plot(T, P);
figure, plot(T, V);

