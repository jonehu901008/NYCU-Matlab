%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab 3
% Problem number: 1
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
disp('Lab 3 problem 1')
disp('Jing-Hong Hu; 109550020')

I = imread('tmp.png');

while 1
	Id = im2double(I);
	s = size(Id);
	w = s(2)-4;
	h = s(1)-4;
	op = input('Please input option:');

	d1 = w/8;
	if op == 0
		disp('Thanks for playing')
		return
	elseif op == 1
		d2 = h/2;
	elseif op == 2
		d2 = h/4;
	elseif op == 3
		d2 = h/8;
	end
	d1 = floor(d1);
	d2 = floor(d2);

	for i = 1:d1:w
		Id(:,i:i+4, 1) = 0;
		Id(:,i:i+4, 2) = 0;
		Id(:,i:i+4, 3) = 1.0;
	end
	for i = 1:d2:h
		Id(i:i+4,:, 1) = 0;
		Id(i:i+4,:, 2) = 0;
		Id(i:i+4,:, 3) = 1.0;

	end
	imshow(Id);
end