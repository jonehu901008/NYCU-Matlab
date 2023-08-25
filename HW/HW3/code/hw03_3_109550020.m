%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 3
% Problem number: 3
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/22/2022
% hw03_3_109550020
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;		% close all windows
                            % clear variables, and clear screen


global key_pressed_op_1;
global key_pressed_op_2;
global key_pressed_op_3;
global key_pressed_op_n;
global key_pressed_op_m;
global key_pressed_quit;

disp('Problem 3.3') 	% Problem 3
I = imread('tmp.png');
I = imresize(I,[320,320]);

key_pressed = true;
key_pressed_op_1 = false;
key_pressed_op_2 = false;
key_pressed_op_3 = false;
key_pressed_op_n = false;
key_pressed_op_m = false;
key_pressed_quit = false;
h_fig = figure; % imshow(I);

set(h_fig,'KeyPressFcn', @m_KeyCallBack_images); % callback function
imshow(I)
f = 0;
a = 160;
b = 160;
r = 160;
disp('0) Show student name and ID.');
disp('1) Turn on or off a spot light at the center of the image.');
disp('2) Turn on or off a spot light at the right side of the image.');
disp('n) Press ‘n’ to reduce the radius of the disk. Each time, reduce r by 20.');
disp('m) Press ‘m’ to increase the radius of the disk. Each time, increase r by 20.');
while 1
    if  key_pressed_quit
        disp('109550020;Jing-Hong Hu');
        return;
    end
    if  key_pressed_op_1
        key_pressed_op_1 = false;
        f = 1-f;
        a = 160;
        b = 160;
        key_pressed = true;
    end
    if  key_pressed_op_2
        key_pressed_op_2 = false;
        f = 1-f;
        a = 320;
        b = 160;
        key_pressed = true;
    end
    if  key_pressed_op_n
        key_pressed_op_n = false;
        r = r - 20;
        key_pressed = true;
    end
    if  key_pressed_op_m
        key_pressed_op_m = false;
        r = r + 20;
        key_pressed = true;
    end
    if key_pressed
        key_pressed = false;
        t = 0:0.1:2*pi;
        x = r*cos(t) + a;
        y = r*sin(t) + b;
        spotlight = zeros(length(x));
        spotlight = spotlight(1:3) + f;
        imshow(I)
        patch(x, y, spotlight, 'FaceAlpha', 0.25, 'EdgeColor', 'None')
    end
    pause(0.033);
end


function m_KeyCallBack_images(~, event)
    global key_pressed_op_1;
    global key_pressed_op_2;
    global key_pressed_op_n;
    global key_pressed_op_m;
    global key_pressed_quit;
    disp(event.Key);
    switch(event.Key) 
        case '0'
            key_pressed_quit = true;
        case 'numpad0'
            key_pressed_quit = true;
        case '1'
            key_pressed_op_1 = true;
        case 'numpad1'
            key_pressed_op_1 = true;
        case '2'
            key_pressed_op_2 = true;
        case 'numpad2'
            key_pressed_op_2 = true;
        case 'n'
            key_pressed_op_n = true;
        case 'm'
            key_pressed_op_m = true;
        otherwise
    end
 end
