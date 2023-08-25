%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab
% Problem number: …
% Student Name:  …
% Student ID: …
% Email address: …
% Department:
% National Yang Ming Chiao Tung University, Taiwan
% Date: ….
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

% show Lab
disp('Final')

global key_pressed_op_1;        % '1'
global key_pressed_op_2;        % '2'
global key_pressed_op_3;        % '3'
global key_pressed_op_4;        % '4'
global key_pressed_quit;        % 'q'
global key_press_return;        % 'm'
global key_press_stop;          % 's'

key_press_stop = false;
key_press_return = false;
key_pressed_op_1 = false;
key_pressed_op_2 = false;
key_pressed_op_3 = false;
key_pressed_op_4 = false;
key_pressed_quit = false;

%global h_fig;

A1 = [0:0.05:pi*2];
S1 = size(A1,2);
h_fig = figure

set(h_fig,'KeyPressFcn',...
    @m_KeyCallBack_system); % callback function


%input('Press ENTER to start.');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(h_fig);      % USE h_fig to plot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = zeros(size(A1));
r = zeros(size(A1));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I = imread('tmp.png');
I = im2double(I);
Ix = 640;
Iy = 640;
I1 = imresize(I,[Ix Iy]);
I0 = I1;
wd = Ix;
he = Iy;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



mainmsg = ["Key Usage:"...
    "Key 1: Curve erasing"...
    "Key 2: Image masks"...
    ];

key_press_stop = false;
key_press_return = false;
key_pressed_op_1 = false;
key_pressed_op_2 = false;
key_pressed_op_3 = false;
key_pressed_op_4 = false;
key_pressed_quit = false;

op = 1;
image_option = 1;
filling_region_mode = 0;

while true
    key_press_stop = false;
    key_press_return = false;
    key_pressed_op_1 = false;
    key_pressed_op_2 = false;
    key_pressed_op_3 = false;
    key_pressed_op_4 = false;
    key_pressed_quit = false;
    
    op = 0;
    figure(h_fig);
    key_press_stop = false;
    key_press_return = false;
    
    title(mainmsg);
    pause(0.03);
    if ( key_pressed_op_1 )
        key_pressed_op_1 = false;
        op = 1;
    end
    if ( key_pressed_op_2 )
        key_pressed_op_2 = false;
        op = 2;
    end
    if ( key_pressed_op_3 )
        key_pressed_op_3 = false;
        op = 3;
    end
    if ( key_pressed_op_4 )
        key_pressed_op_4 = false;
        op = 4;
    end
    if ( key_pressed_quit )
        key_pressed_quit = false;
        close all;
        disp('Student Name:12345678');
        disp('Student ID:12345678');
        disp('Thanks for playing!');
        return;
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if ( op == 1 )
        plot(-6:0.01:6, [-6:0.01:6].^2, 'b' );
        msg = ["Curve erasing"...
            "Press s to stop"];
        title(msg);
        if ( key_press_stop )
            break;
        end
        pause(0.02);
    end % op == 1
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if (op ==2)
       imshow((I-I.*I.*I)*2);
    end % if op ==2
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    if (op==3)
        i = 1;
        x = [-6:0.1:6];
        y = x.*sin(3*x)/4;
        length = length(x);
        while (i<=length)
            clf
            %figure(h_fig);                  
            plot(x(i:end), y(i:end));
            i = i + 1;
            
            msg = ["Curve erasing"...
                "Press s to stop"];
            title(msg);
            axis([-6 6 -2 2]);
            if (key_press_stop) 
                key_press_stop = false;
                break;
            end
            pause(0.033);
        end
    end % op ==3
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    
    if (op==4)
        imshow(I);
    end % if op == 4
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    while true 
        if (op==0) break; end
        title('Press m to return to main menu...');
        pause(0.03);
        if (key_press_return)
            clf
            break;
        end
        
    end
    hold off
end % while
hold off;




