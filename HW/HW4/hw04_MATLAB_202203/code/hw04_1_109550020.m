%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 4
% Problem number: 1
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 5/22/2022
% hw04_1_109550020
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clear; clc;

disp('HW4 Problem 1')
n = -1;
while n < 0 || n > 1000000
	n = input('Please input n:');
	if n == 0
		return
	end
end

a = input('Please input a:');
b = input('Please input b:');
c = input('Please input c:');
if a*a*b*c <= 0
	return
end

Y = 0:0.01:1;
X = a*Y.^2 + b*Y + c;
sample = [];
samplex = [];
plot(X, Y, LineWidth=3, Color='r')
hold on
i = 0;
while i < n
	y = rand;
	x = a*y^2 + b*y + c;
	y1 = 0:0.01:y;
	x1 = zeros(length(y1)) + x;
	x1 = x1(1:length(y1));
	sample = [sample; [x,y]];
	samplex = [samplex, x];
	plot(x1, y1, LineWidth=1, Color='blue')
	i = i+1;
end
sample = sort(sample);
M = mean(samplex);
SD = std(samplex);
title(sprintf('M:%f; SD:%f; a:%f; b:%f; c:%f', M, SD, a, b, c))
i = 1;
while i <= n
	r = roots([a b c-sample(i)]);
	plot(sample(i), r(2), 'o', Color='y')
	pause(0.02)
	i = i+1;
end


