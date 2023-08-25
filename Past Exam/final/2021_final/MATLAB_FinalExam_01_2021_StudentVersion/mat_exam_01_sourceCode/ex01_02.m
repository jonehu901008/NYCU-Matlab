%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab
% Problem number: �
% Student Name:  �
% Student ID: �
% Email address: �
% Department: Computer Science, NCTU
% Date: �.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Align the lines
% Select all and then press CONTROL-I
%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

% show Lab
disp('Final Exam Problem 1.2');
disp('Student Name; Student ID');


        global key_pressed_op_1;
global key_pressed_op_2;
global key_pressed_op_3;
global key_pressed_op_4;
global key_pressed_quit; % 'q'
global key_press_return; % 'm'
        global key_press_stop; % 's' 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Align the lines
% Select all (CONTROL-A) and then press CONTROL-I
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

key_press_stop = false;
key_press_return = false;
key_pressed_op_1 = false;
key_pressed_op_2 = false;
key_pressed_op_3 = false;
key_pressed_op_4 = false;
key_pressed_quit = false;

h_fig = figure

set(h_fig,'KeyPressFcn',...
    @m_KeyCallBack_system); % callback function


input('Press ENTER to start.');

figure(h_fig);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I = imread('tmp.png');
I = im2double(I);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

op = 2;

mainmsg = ["Key Usage:"...
    "Key 1: Option 1"...
    "Key 2: Option 2"...
    ];
while true
    clf
    op = 0;
    key_press_stop = false;
    key_press_return = false;
	key_pressed_op_1 = false;
	key_pressed_op_2 = false;
	key_pressed_op_3 = false;
	key_pressed_op_4 = false;
	key_pressed_quit = false;
    
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
       
        % close all; % close all the figure windows
        %disp('Student ID:12345678');
        disp('Thanks for playing!');
        
        return;    % quit the program
        
    end
    if (op ==1)
        %initialize parameters and so on
        %before entering the animation loop
        t = 1;
        while true
            x = [-10:0.01:10];
            y = sin(x+t);
            t = t + 0.1;
            plot(y, x);
            
            pause(0.033);
            if (key_press_return)
                break;
            end;
        end % while
    end % if op ==1
    
    if (op==2) 
        %initialize parameters and so on
        %before entering the animation loop
        t = 1; 
        a = 1.5;
        while true
            x = [-10:0.01:10];
            y = a.*x.*cos(x+t);
            t = t + 0.1;
            plot(x, y);
            
            pause(0.033);
            if (key_press_return)
                break;
            end;
        end % while
    end % if op == 2
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Add your own stuff here if you want
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % BEGIN: Do not modify the following code fragment
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    while true
        
        if (op==0) break; end
        
        title('Press c to continue...');
        pause(0.03);
        if (key_press_spacebar)
            break;
        end
        
    end
    hold off
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % END: Do not modify the above code fragment
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end % while
hold off;
    
    
    
