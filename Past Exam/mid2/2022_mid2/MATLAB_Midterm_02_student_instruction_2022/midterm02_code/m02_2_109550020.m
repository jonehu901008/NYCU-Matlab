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

	
a1 = 9;
b1 = 3;
c1 = 8;
t1 = 0:0.1:4*pi;
x1 = (a1+b1)*cos(t1) - c1*cos((a1/b1+1)*t1);
y1 = (a1+b1)*sin(t1) - c1*sin((a1/b1+1)*t1);

a2 = 10;
d2 = 2;
t2 = 0:0.2:8*pi;
x2 = a2*cos(t2).*sin(2*d2*t2);	
y2 = a2*sin(t2).*sin(2*d2*t2);	

subplot(1, 2, 1)
plot(x2, y2, 'r', 'LineWidth', 3)
hold on
plot(x1, y1, 'b', 'LineWidth', 3)
subplot(1, 2, 2)
plot(x2, y2, 'r', 'LineWidth', 3)
hold on
plot(x1, y1, 'b', 'LineWidth', 3)
figure(1)
input('Please press enter to continue.')

for f = 0:0.025:1
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
    k1 = 1-cos(f*pi/2) ;
    Lx = (1-k1).*x1 + k1.*x2;
    Ly = (1-k1).*y1 + k1.*y2;
    plot(Lx, Ly, 'y', 'LineWidth', 3)
    axis([-20 20 -20 20])
    subplot(1, 2, 2)
    k2 = f*(2-sin((1-f/2)*pi+2*f*pi));
    Rx = (1-k2).*x1 + k2.*x2;
    Ry = (1-k2).*y1 + k2.*y2;
    plot(Rx, Ry, 'y', 'LineWidth', 3)
    axis([-20 20 -20 20])
    pause(0.05)
end