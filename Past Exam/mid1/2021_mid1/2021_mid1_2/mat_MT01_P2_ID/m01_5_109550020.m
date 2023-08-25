%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 1
% Problem number: 5
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/17/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;		% close all windows
                            % clear variables, and clear screen

disp('Midterm Problem 1.5') 	% show Midterm Problem 1.5
I = imread('tmp.jpg');
I2 = imresize(I,[320,320]);
while 1
    u = input("Please input an option(integer) between 0 and 5:");
    if u == 0
        disp('109550020;Jing-Hong Hu');
        return;
    elseif u >= 5 || u < 0 || round(u) ~= u
        disp('Invalid input. Please input an option(integer) between 0 and 5');
    elseif u == 1
        for x = 160:3:320
            I3 = I2;
            I3(x:x, :, :) = 255;
            imshow(I3)
        end
    elseif u == 2
        for x = 160:-3:1
            I3 = I2;
            I3(x:x, :, :) = 255;
            imshow(I3)
        end
    elseif u == 3
        for x = 160:3:320
            I3 = I2;
            I3(:, x:x, :) = 255;
            imshow(I3)
        end
    elseif u == 4
        for x = 160:-3:1
            I3 = I2;
            I3(:, x:x, :) = 255;
            imshow(I3)
        end
    elseif u == 5
        for i = 320:-10:0
            pause(0.1)
            t = 0:0.1:2*pi;
            r = 80;
            x = r*cos(t) + i;
            y = r*sin(t) + 320;
            spotlight = ones(length(x));
            spotlight = spotlight(1:3).*0.5;
            imshow(I2)
            patch(x, y, spotlight, 'facealpha', 0.3, 'edgecolor', 'none');
        end
        continue;
    end
end

