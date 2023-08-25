%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 4
% Problem number: 2
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

disp('HW4 Problem 2')

x = 0:0.01:10;
y1 = sin(x);
y2 = cos(2*x);
y3 = x.^2.*sin(x).*exp(-x+1);
y4 = 4-x/2;
x0 = -1;
while x0 < 0 || x0 > 10
	x0 = input('Please input x0:');
	if x0 == 0
		return
	end
end
a1 = 0;
a2 = 0;
a3 = 0;
a4 = 0;
for i = 1:x0*100-1
	a1 = a1 + abs(y1(i))*0.01;
	a2 = a2 + abs(y2(i))*0.01;
	a3 = a3 + abs(y3(i))*0.01;
	a4 = a4 + abs(y4(i))*0.01;
end
area = [a1 a2 a3 a4];
area = sort(area);
n1 = find(area == a1);
n2 = find(area == a2);
n3 = find(area == a3);
n4 = find(area == a4);
i = 1;
while i <= length(x)
	subplot(2,2,1)
	plot(x, y1, Color='b')
	hold on
	if y1(i) < 0
		y = y1(i):0.01:0;
	else
		y = 0:0.01:y1(i);
	end
	x1 = zeros(length(y)) + x(i);
	plot(x1(1:length(y)), y, Color='r')
	title(sprintf('(%d)y1 = sin(x);Area:%f', n1, a1));
	grid on
	hold off
	
	subplot(2,2,2)
	plot(x, y2, Color='b')
	hold on
	if y2(i) < 0
		y = y2(i):0.01:0;
	else
		y = 0:0.01:y2(i);
	end
	x1 = zeros(length(y)) + x(i);
	plot(x1(1:length(y)), y, Color='r')
	title(sprintf('(%d)y2 = cos(2*x);Area:%f', n2, a2));
	grid on
	hold off
	
	subplot(2,2,3)
	plot(x, y3, Color='b')
	hold on
	if y3(i) < 0
		y = y3(i):0.01:0;
	else
		y = 0:0.01:y3(i);
	end
	x1 = zeros(length(y)) + x(i);
	plot(x1(1:length(y)), y, Color='r')
	title(sprintf('(%d)y3 = x^2*sin(x)*exp(-(x-1));Area:%f', n3, a3));
	grid on
	hold off
	
	subplot(2,2,4)
	plot(x, y4, Color='b')
	hold on
	if y4(i) < 0
		y = y4(i):0.01:0;
	else
		y = 0:0.01:y4(i);
	end
	x1 = zeros(length(y)) + x(i);
	plot(x1(1:length(y)), y, Color='r')
	title(sprintf('(%d)y4 = 4-x/2;Area:%f', n4, a4));
	grid on
	hold off
	pause(0.025)
	i = i+1;
end


