%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 2
% Problem number: 4
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 5/11/2022
% National Yang Ming Chiao Tung University, Taiwan
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all; clear; clc;		% close all windows
                            % clear variables, and clear screen
disp('Midterm Problem 2.4') % show Midterm Problem 2.4
disp('Jing-Hong Hu; 109550020');

I1 = imread('sunflower.jpg');
I2 = imresize(I1,[640,640]);

I3 = ones(size(I2), 'double'); 
s = size(I3); 
Id = im2double(I2); 
i = 0;
while i <= 1 
    I3(:, :,1:3) = i; 	% s(2): number of columns
	imshow(Id.*I3) 		% K is a mask
	i = i + 0.02;
end

% f is the animation frame index
numFrames = 100;
for f = 1:numFrames
	[x y] = meshgrid([1:s(2)]);
	% center of ripple
	xc = 320+270*cos(2*pi*f/numFrames); 
	yc = 320+270*sin(2*pi*f/numFrames);
	a = numFrames*10/(f+10);
	x = (x - xc)/a; % denominator controls
	y = (y - yc)/a; % number of circles
	r = sqrt(x.^2 + y.^2) + eps;
	z = abs(sin(r) ./r); % Maxican hat
	zmax = max(max(z));
	z = 5*z ./ zmax;
	I4 = Id;
	for i = 1:s(1)
		for j = 1:s(2)
		  I4(i,j,:) = z(i,j); % construct a mask
		end
	end
	imshow(Id.*I4);
	pause(0.033);
end

