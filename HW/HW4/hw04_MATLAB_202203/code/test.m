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
c = 2;
theta = 0:0.01:2*pi;
r = 1+c*sin(theta);
polar(theta,r)