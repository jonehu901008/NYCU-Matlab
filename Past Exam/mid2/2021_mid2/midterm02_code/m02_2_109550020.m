%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 2
% Problem number: 2
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 5/11/2022
% National Yang Ming Chiao Tung University, Taiwan
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all; clear; clc;		% close all windows
                            % clear variables, and clear screen
disp('Midterm Problem 2.2') % show Midterm Problem 2.2
disp('Jing-Hong Hu; 109550020');

a1 = 3;
t = 0:0.1:12*pi;
x1 = a1 .* sin(t) .* (exp(cos(t)) - 2.*cos(4.*t) - sin(t./12).^5); 
y1 = a1 .* cos(t) .* (exp(cos(t)) - 2.*cos(4.*t) - sin(t./12).^5);

R = 12; r = 4; d = R;
t = 0:0.025:6*pi*r/(R-r);
x2 = (R-r).*cos(t) + d * cos(((R-r)/r)*t);	
y2 = (R-r).*sin(t) + d * sin(((R-r)/r)*t);


clf
subplot(1, 2, 1)
plot(x2, y2, 'r', 'LineWidth', 3)
hold on
plot(x1, y1, 'b', 'LineWidth', 3)
subplot(1, 2, 2)
plot(x2, y2, 'r', 'LineWidth', 3)
hold on
plot(x1, y1, 'b', 'LineWidth', 3)
input("Please press enter to start.")
figure(1)

for f = 0:0.05:1
    clf;
    subplot(1, 2, 1)
    plot(x2, y2, 'r', 'LineWidth', 3)
    hold on
    plot(x1, y1, 'b', 'LineWidth', 3)
    subplot(1, 2, 2)
    plot(x2, y2, 'r', 'LineWidth', 3)
    hold on
    plot(x1, y1, 'b', 'LineWidth', 3)
    subplot(1, 2, 1)
    k1 = f*cos(2*pi*f);
    Lx = (1-k1).*x1 + k1.*x2;
    Ly = (1-k1).*y1 + k1.*y2;
    plot(Lx, Ly, 'y', 'LineWidth', 3)
    axis([-20 20 -20 20])
    subplot(1, 2, 2)
    k2 = (exp(f)-1)/(exp(1)-1);
    Lx = (1-k2).*x1 + k2.*x2;
    Ly = (1-k2).*y1 + k2.*y2;
    plot(Lx, Ly, 'y', 'LineWidth', 3)
    axis([-20 20 -20 20])
    pause(0.05)
end