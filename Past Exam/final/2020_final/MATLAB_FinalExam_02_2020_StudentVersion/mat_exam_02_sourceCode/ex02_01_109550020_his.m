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
	subplot(1,2,1)
	title(["pdf of y"])
	xlabel(["y"])
	y = rand(n,1);
	h1 = histogram(y,'Normalization','pdf');
	hold on
	z = 0.0001:0.01:1;
	f = ones(length(z));
	plot(z, f(1,:), LineWidth=2, Color='r')
	subplot(1,2,2)
	xlabel(["x"])
	x = b*(a*pi*y.^2/2);
	h2 = histogram(x,'Normalization','pdf');
	hold on
	z = 0.0001:0.01:a*b*pi/2;
	f = 1./(2*sqrt(2*z/(a*b*pi)));
	plot(z, f, LineWidth=2, Color='r')
	M = mean(z);
	SD = std(z);
	title(sprintf('pdf of X = b*(a pi Y^2/2);\nMean:%.2f; SD:%.2f; a:%.2f; b:%.2f', M, SD, a, b))
	h1v = h1.Values;
	h2v = h2.Values;
	h1b = h1.BinEdges;
	h2b = h2.BinEdges;
	h1n = h1.NumBins;
	h2n = h2.NumBins;
elseif op == 2
	h_fig = figure;
	A = [0.5 1.0];
	B = [-1 -0.5 0.25 0.75];
	for i = 1:2
		for j = 1:4
			a = A(i);
			b = B(j);
			Y = rand(n,1);
			X = b*(a*pi*Y.^2/2);
			subplot(2, 4, (i-1)*4+j)
			xlabel(["x"])
			h2 = histogram(X,'Normalization','pdf');
			hold on
			e = a*b*pi/2;
			if e > 0
				z = 0.0001:0.01:a*b*pi/2;
			else
				z = a*b*pi/2:0.01:-0.0001;
			end
			f = 1./(2*sqrt(2*z/(a*b*pi)));
			plot(z, f, LineWidth=2, Color='r')
			M = mean(z);
			SD = std(z);
			title(sprintf('pdf of X = b*(a pi Y^2/2);\nMean:%.2f; SD:%.2f; a:%.2f; b:%.2f', M, SD, a, b))
		end
	end
end