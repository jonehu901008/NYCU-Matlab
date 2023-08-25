%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: …
% Problem number: …
% Student Name:  …
% Student ID: …
% Email address: …
% Department:
% National Yang Ming Chiao Tung University, Taiwan
% Date: ….
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Align the lines
% Select all and then press CONTROL-I
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;		% close all windows
% clear variables, and clear screen

disp('Final Exam Problem 1.1') 	% show Final Exam Problem 1.1

disp('Student Name; Student ID');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Align the lines
% Select all (CONTROL-A) and then press CONTROL-I
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h_fig = figure;

global key_w_dec;           % 'n'
global key_w_inc;           % 'm'
global key_u_dec;           % 'j'
global key_u_inc;           % 'k' 
global key_pressed_quit;    % 'q'

key_w_dec = false;
key_w_inc = false;
key_u_dec = false;
key_u_inc = false;
key_pressed_quit = false;
set(h_fig,'KeyPressFcn',...
    @m_KeyCallBack_curve); % callback function

b0 = 15;

while true

                 if (key_w_dec) 
        key_w_dec = false;
        b0 = b0 - 10;
       
    end
    
    if (key_w_inc) 
        key_w_inc = false;
        b0 = b0 + 10;
       
    end
       
    
                if (key_u_dec) 
        key_u_dec = false;
        b0 = b0 - 10;
       
    end
    
    if (key_u_inc) 
        key_u_inc = false;
        b0 = b0 + 10;
       
    end
    
    if (key_pressed_quit) 
              key_pressed_quit = false;
        %disp('Student Name: xyz');
        %disp('Student ID: 12345678');
        return;                         % quit the program
    end
    
    x = [-10:0.05:10];
    y = x.*2 + b0*sin(x);
               plot(x, y, 'o');
    
pause( 0.033);

            end
