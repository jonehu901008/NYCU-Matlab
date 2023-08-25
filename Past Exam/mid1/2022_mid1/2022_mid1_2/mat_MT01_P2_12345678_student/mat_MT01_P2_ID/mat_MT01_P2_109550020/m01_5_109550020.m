%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 1
% Problem number: 5
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/18/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;		% close all windows
                            % clear variables, and clear screen

disp('Midterm Problem 1.5') 	% show Midterm Problem 1.5
I = imread('tmp.png');
I2 = imresize(I,[320,320]);
f = 0.1;
while 1
    disp('0) Show name and ID. Then Quit the program');
    disp('1) Sweeping a line from left to right');
    disp('2) Sweeping a line from right to left');
    disp('3) Clear the red intensity of the image from left to right');
    disp('4) Clear the red intensity of the image from right to left');
    disp('5) Turn on or off a spot light at the top middle. Move it from top to bottom');
    I4 = I2;
    u = input("Please input an valid option:");
    if u == 0
        disp('109550020;Jing-Hong Hu');
        return;
    elseif u > 5 || u < 0 || round(u) ~= u
        continue;
    elseif u == 1
        for x = 1:3:311
            I3 = I2;
            I3( :,x:x+9, :) = 255;
            imshow(I3)
        end
    elseif u == 2
        for x = 311:-3:1
            I3 = I2;
            I3( :,x:x+9, :) = 255;
            imshow(I3)
        end
    elseif u == 3
        for x = 1:4:316
            I4(:, x:x+9, 1) = 0;
            imshow(I4)
        end
    elseif u == 4
        for x = 316:-4:1
            I4( :,x:x+4, 1) = 0;
            imshow(I4)
        end
    elseif u == 5
        f = 1-f;
        for i = 0:10:320
            imshow(I2)
            t = 0:0.1:2*pi;
            r = 160;
            x = r*cos(t) + 160;
            y = r*sin(t) + i;
            spotlight = ones(length(x));
            spotlight = spotlight(1:3).*f;
            patch(x, y, spotlight, 'facealpha', 0.5, 'edgecolor', 'none');
            pause(0.01)
        end
    end
end

