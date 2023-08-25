%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 3
% Problem number: 1
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 6/2/2022
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

disp('Jing-Hong Hu;109550020');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Align the lines
% Select all (CONTROL-A) and then press CONTROL-I
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h_fig = figure;

global key_w_dec;
global key_w_inc;
global key_u_dec;
global key_u_inc;
global key_pressed_quit;

key_w_dec = false;
key_w_inc = false;
key_u_dec = false;
key_u_inc = false;
key_pressed_quit = false;
set(h_fig,'KeyPressFcn',...
    @m_KeyCallBack_p1); % callback function

u = 0.1;
w = -2;
dx = 0.001;
x = -6:dx:6;
while true

	if (key_w_dec) 
        key_w_dec = false;
        w = w - 0.125;
    end
	
    if (key_w_inc) 
        key_w_inc = false;
        w = w + 0.125;
    end
	
	if w < -2
		w = -2;
	elseif w > 2
		w = 2;
	end
	
	if (key_u_dec) 
        key_u_dec = false;
        u = u - 0.125;
       
    end
    
    if (key_u_inc) 
        key_u_inc = false;
        u = u + 0.125;
    end
	
	if u < 0
		u = 0;
	elseif u > 3
		u = 3;
	end
       
    if (key_pressed_quit) 
		key_pressed_quit = false;
        close all;
        disp('Jing-Hong Hu;109550020');
        return;
    end
    
	z1 = exp(-w*cos(x/4))+ u*(1+w*w)*cos(x);
	z2 = (x-w).*(x-w*w).*(cos(x/4).*sin(x/4)+1);
	y = sin(x).*z1.*sin(z2+0.05)./z2;
	r = sort([w w*w]);
	if r(2) > 10
		r(2) = 10;
	end
	s = 1;
	e = 0;
	x1 = -6:dx:r(1);
	e = e+length(x1);
	y1 = y(s:e);
	s = e+1;
	x2 = r(1)+dx:dx:r(2);
	e = e+length(x2);
	y2 = y(length(x1)+1:length(x1)+length(x2));
	s = e+1;
	x3 = r(2)+dx:dx:6;
	e = e+length(x3);
	y3 = y(s:e);
	plot(x1, y1, Color='black', LineWidth=3);
	ylim([-6 6])
	hold on
	plot(x2, y2, Color='green', LineWidth=3);
	plot(x3, y3, Color='red', LineWidth=3);
	set(gca,'FontSize',20)
	title(sprintf("w=%f u=%f", w, u))
	hold off
	
	pause(0.033);

end

function m_KeyCallBack_p1(src,event)
    disp(event.Key);
	global key_w_dec;
	global key_w_inc;
	global key_u_dec;
	global key_u_inc;
	global key_pressed_quit;

    
    switch(event.Key) 
        case 'n'
            key_w_dec = true;
        case 'm'
            key_w_inc = true;
        case 'j'
            key_u_dec = true;
        case 'k'
            key_u_inc = true;
        case 'q'
            key_pressed_quit = true;
        otherwise
            
    end
    
    
 end