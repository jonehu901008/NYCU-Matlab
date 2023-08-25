%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab 3
% Problem number: 2
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 5/15/2022
% National Yang Ming Chiao Tung University, Taiwan
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clear; clc;

% show Lab
disp('Lab 3 problem 2')
disp('Jing-Hong Hu; 109550020')

I = imread('tmp.png');

Id = im2double(I);

s = size(Id);
h = s(1);
w = s(2);
K = ones(size(I), 'double');
while 1
	op = input('Please input option:');
	if op == 0
		disp('Thanks for playing')
		return
	elseif op == 1
		x = 1:w;
		z = abs(cos(2*pi*x/w));
		for i = x		% x: number of columns
			K(:,i,1) = z(i);
			K(:,i,2) = z(i);
			K(:,i,3) = z(i);
		end
	elseif op == 2
		x = 1:h;
		z = abs(cos(2*pi*x/h));
		for i = x		% x: number of columns
			K(i,:,1) = z(i);
			K(i,:,2) = z(i);
			K(i,:,3) = z(i);
		end
	end
	imshow(Id.*K);
end