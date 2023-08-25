%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exam Number: 3
% Problem number: 1
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 6/7/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clear; clc;

disp('Final2 Problem 1')

n = -1;
while n < 0 || n > 1000000
	n = input('Please input n:');
	if n == 0
		return
	end
end
disp("1) Show pdf of x for given a and b")
disp("2) Show pdf of x for fixed sets of a and b")
op = input("Please input option:");
if op == 1
	a = 0;
	while a < 0.5 || a > 1
		a = input('Please input a:');
	end
	b = 0;
	while b < -1 || (b > -0.5 && b <0.5) || b > 1
		b = input('Please input b:');
	end
	Y = 0:0.01:1;
	X = b*(a*pi*Y.^2/2);
	sample = [];
	samplex = [];
	sampley = [];
	i = 0;
	while i < n
		y = rand;
		x = b*(a*pi*y.^2/2);
		sample = [sample; [x,y]];
		samplex = [samplex, x];
		sampley = [sampley, y];
		i = i+1;
	end
	subplot(1,2,1)
	y = ones(length(Y));
	y = y(1,:);
	plot(Y, y, LineWidth=3, Color='red')
	hold on
	xlabel("y")
	yy = ones(length(sampley));
	bar(sampley, yy(1,:), 'blue', LineWidth=0.01)
	subplot(1,2,2)
	plot(X, Y, LineWidth=3, Color='r')
	hold on
	xlabel("x")
	bar(samplex, sampley, 'blue', LineWidth=0.01)
	sample = sort(sample);
	M = mean(samplex);
	SD = std(samplex);
	subplot(1,2,2)
	title(sprintf('pdf of X = b*(a pi Y^2/2);\nMean:%.2f; SD:%.2f; a:%.2f; b:%.2f', M, SD, a, b))
	i = 1;
	while i <= n
		r = roots([b*a*pi/2 0 -sample(i)]);
		subplot(1,2,1)
		y = ones(length(Y));
		y = y(1,:);
		plot(sample(i,2), 1, 'r.', Color='y', MarkerSize=10)
		subplot(1,2,2)
		plot(sample(i,1), r(1), 'r.', Color='y', MarkerSize=10)
		
		pause(0.03)
		
		subplot(1,2,1)		
		plot(Y, y, LineWidth=3, Color='red')
		subplot(1,2,2)
		plot(X, Y, LineWidth=3, Color='r')
		i = i+1;
	end
elseif op == 2
	h_fig = figure;
	A = [0.5 1.0];
	B = [-1 -0.5 0.25 0.75];
	for i = 1:2
		for j = 1:4
			a = A(i);
			b = B(j);
			Y = 0:0.01:1;
			X = b*(a*pi*Y.^2/2);
			subplot(2, 4, (i-1)*4+j)
			plot(X, Y, LineWidth=3, Color='r')
			hold on
			sample = [];
			samplex = [];
			k = 0;
			while k < n
				y = rand;
				x = b*(a*pi*y.^2/2);
				y1 = 0:0.01:y;
				x1 = ones(length(y1));
				x1 = x1(1,:)*x;
				plot(x1, y1, LineWidth=1, Color='blue')
				sample = [sample; [x,y]];
				samplex = [samplex, x];
				k = k+1;
			end
			sample = sort(sample);
			M = mean(samplex);
			title(sprintf('Mean:%.2f;\na:%.2f; b:%.2f', M, a, b))
			xlabel("x")
		end
	end
end