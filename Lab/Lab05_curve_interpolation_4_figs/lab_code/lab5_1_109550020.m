%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lab Number: 5
% Problem number: 1
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 5/27/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

disp('Lab 5 Problem 1.1')  
disp('109550020;Jing-Hong Hu');

x = -10:0.025:10;
y1 = [];
y2 = [];
for i = 1:4
	y1 = [y1; cos(2*i*x)];
	y2 = [y2; 2*x.*sin(i*i*x)./(x.^2+1)-2];
end
for k = 1:-0.01:0
    pause(1/30);
    clf
	for i = 1:4
		subplot(2,2,i);
		yi1 = y1(i, :);
		yi2 = y2(i, :);
		hold on
		plot(x, yi1, 'linewidth', 3, 'Color', 'r');
		plot(x, yi2, 'linewidth', 3, 'Color', 'b');
		y = k.*yi1 + (1-k).*yi2;
		plot(x, y, 'linewidth', 1, 'Color', 'y');
		title(sprintf('cos(2*%d*x)\n2*x*sin(%d^2*x)/(x^2+1)-2', i, i));
	end
    if (k==1)
        input('Press a key to continue...');
    end
end


