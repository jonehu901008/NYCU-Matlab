%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab Two
% Problem number: ?
% Student Name:  ?
% Student ID: ?
% Email address: ?
% Department: Computer Science, NYCU
% Date: ?
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

% show Lab Two Example
disp('Lab Two Problem 1')  
grid
m = 1;
g = 2;
n = [0 -1];
F = m*g*n;
while true
    d = input('Please input [d1 d2]:');
    if d(1) < 0 || d(2) < 0 
        return;
    end
    if d(1) <= 1 && d(2) <= 1
        break;
    end    
end
clf;

t = 0;
dt = 0.02;
tmax = 100;
p1 = [0 0];
p2 = [0 0];
v1 = [15 20];
v2 = [15 20];

x1 = [];
y1 = [];
x2 = [];
y2 = [];
while t <= tmax
    a1 = F/m - d(1)*v1;	% acceleration, -d*v is a damping force
    v1 = v1 + a1*dt;		% velocity
    p1 = p1 + v1*dt; 		% position
    x1 = [x1 p1(1)];
    y1 = [y1 p1(2)];
    subplot(1,2,1)
    plot(x1, y1, Color='blue')
    viscircles([p1(1) p1(2)], 1, 'color', 'b');
    axis([0 400 -100 100])
    a2 = F/m - d(2)*v2;	% acceleration, -d*v is a damping force
    v2 = v2 + a2*dt;		% velocity
    p2 = p2 + v2*dt;       % position
    x2 = [x2 p2(1)];
    y2 = [y2 p2(2)];
    subplot(1,2,2)
    plot(x2, y2, Color='blue')
    viscircles([p2(1) p2(2)], 1, 'color', 'b');
    axis([0 400 -100 100])
    t = t + dt;
    pause(0.01)
end

