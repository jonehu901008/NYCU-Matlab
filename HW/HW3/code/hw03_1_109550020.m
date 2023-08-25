%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 3
% Problem number: 1
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/19/2022
% hw03_1_109550020
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

disp('Problem 1')  
disp('109550020;Jing-Hong Hu');

x = -10:0.025:10;
y1 = sin(5*x)+5;
y2 = 2*cos(x.^2)-5;

z1 = x.*sin(x/2)+5;
z2 = 2*cos(x.^2)./(sin(x)+1.5)-1;

for k = 1:-0.01:0
    pause(0.05);
    clf
    subplot(1,2,1);
    hold on
    plot(x, y1, 'linewidth', 3);
    plot(x, y2, 'linewidth', 3);
    y = k.*y1 + (1-k).*y2;
    plot(x, y, 'linewidth', 3);  
    set(gca,'FontSize',15);         %set font size
    
    subplot(1,2,2);
    hold on
    plot(x, z1, 'linewidth', 3);
    plot(x, z2, 'linewidth', 3);
    z = k.*z1 + (1-k).*z2;
    plot(x, z, 'linewidth', 3); 
    set(gca,'FontSize',15);         %set font size
    if (k==1)
        input('Press a key to continue...');
    end
end

