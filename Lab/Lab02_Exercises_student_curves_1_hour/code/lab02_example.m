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
disp('Lab Two Example')  

t = 0;
tmax = 100;

grid
a = [-0.5 -1.5];
p = [0 0];
v = [15 20];
dt = 0.1;
while true
    d = input('Please input d:');
    if (d<0) 
        return;
    end
    if (d<=1) 
        break;
    end    
end
clf;
figure
while (t<=tmax) 
    clf
    v = v + a*t - d*v;
    p = p + v*t;
    t = t + dt;
    viscircles([p(1) p(2)], 1, 'color', 'b');
    axis([-100 100 -100 100]);
    pause(0.05);
end

