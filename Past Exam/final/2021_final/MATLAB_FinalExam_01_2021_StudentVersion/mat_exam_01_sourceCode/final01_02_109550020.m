%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 3
% Problem number: 1
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 6/1/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Align the lines
% Select all and then press CONTROL-I
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all; clear; clc;		% close all windows
% clear variables, and clear screen

disp('Final Exam Problem 1.2') 	% show Final Exam Problem 1.1

disp('Jing-Hong Hu;109550020');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Align the lines
% Select all (CONTROL-A) and then press CONTROL-I
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h_fig = figure;

global key_1;
global key_2;
global key_3;
global key_4;
global key_m;
global key_q;

key_1 = false;
key_2 = false;
key_3 = false;
key_4 = false;
key_m = true;
key_q = false;

set(h_fig,'KeyPressFcn',...
    @m_KeyCallBack_p2); % callback function

u = 0.1;
w = 1;
dx = 0.01;
x = -10:dx:10;
colorMap = jet(32);
m = 0;
while true
	if(key_m)
		key_m = false;
		key_q = false;
		clf;
		plot(0.5,0.5)
		title(["Key Usage:",
			   "Key 1: Curve drawing",
			   "Key 2: Tracing a point in a Polar plot",
			   "Key 3: Curve morphing",
			   "Key 4: Spotlight Animation",
			   "Key m: Return to main menu immediately",
			   "Key q: Quit the program whe in the main menu"
				])
		m = 1;
	end
	
	if(key_1)
		m = 0;
		key_1 = false;
		for i = -4:0.01:4;
			if key_m
				break
			end
			x = -4:0.01:i;
			y = 5*sin(x).*cos(exp(x))+3*sin(2*x)+sin(x);
			c_idx = ceil(((i+4.01)/8)*31);
			color = colorMap(c_idx,:);
			plot(x, y, Color=color, LineWidth=4)
			title(["Press m to return to main menu..."])
			axis([-4 4 -9 9])
			pause(0.01);
		end
	end
	
	if(key_2)
		m = 0;
		key_2 = false;
		theta = 0:0.01:2*pi;
		r = 1-cos(4*theta).*sin(4*theta);
		[x1 y1] = pol2cart(theta, r);
		for i = 0:0.01:2*pi;
			if key_m
				break
			end
			polar(theta, r)
			hold on
			title(["Press m to return to main menu..."])
			patch(x1, y1, 'y');
			r1 = 1-cos(4*i)*sin(4*i);
			polar(i, r1, '-o')
			pause(0.01)
			hold off
		end
	end
	
	if(key_3)
		m = 0;
		key_3 = false;
		t = -10:0.025:10;
		a1 = 10; b1 = 5; c1 = 0; n1 = 3;
		x1 = a1*cos(n1*t+c1);
		y1 = b1*sin(t).*cos(t);
		a2 = 5;
		x2 = a2*(2*cos(t)-cos(5*t));	
		y2 = a2*(2*sin(t)-cos(5*t));
		for h = 0:0.01:1
			if key_m
				break
			end
			subplot(1,2,1);
			plot(t, x1, 'linewidth', 3);
			hold on
			plot(t, x2, 'linewidth', 3);
			k = h;
			x = (1-k)*x1 + k*x2;
			plot(t, x, 'linewidth', 1); 
			title(["Curve Morphing"])
			hold off
			
			subplot(1,2,2);
			plot(t, y1, 'linewidth', 3);
			hold on
			plot(t, y2, 'linewidth', 3);
			k = sin(h*pi)^2;
			y = (1-k)*y1 + k*y2;
			plot(t, y, 'linewidth', 1);  
			title(["Press m to return to main menu..."])
			hold off
			
			pause(0.02)
		end
	end
	
	if(key_4)
		m = 0;
		key_4 = false;
		I = imread("tmp.png");
		I1 = imresize(I,[480 480]);
		imshow(I1);
		r1 = 240;
		r2 = 40;
		for i = 1:4
			for j = 1:120:480
				if key_m
					break
				end
				t = 0:0.1:2*pi;
				if i == 1
					xc = 0; yc = j;
				elseif i == 2
					xc = j; yc = 480;
				elseif i == 3	
					xc = 480; yc = 480-j;
				else
					xc = 480-j; yc = 0;
				end
				x1 = r1*cos(t) + xc;
				y1 = r1*sin(t) + yc;
				x2 = r2*cos(t) + xc;
				y2 = r2*sin(t) + yc;
				spotlight = ones(length(x));
				spotlight1 = spotlight(1:3)*0.9;
				spotlight2 = spotlight(1:3)*0.9;
				spotlight2(2:3) = spotlight(2:3) + (1-spotlight(2:3))*0.7;
				imshow(I1)
				title(["Press m to return to main menu..."])
				patch(x1, y1, spotlight1, 'FaceAlpha', 0.5, 'EdgeColor', 'None')
				patch(x2, y2, spotlight2, 'FaceAlpha', 0.5, 'EdgeColor', 'None')
				
				pause(0.3)
			end
		end
	end
	
    if (key_q & m) 
		key_q = false;
        close all;
        disp('Jing-Hong Hu ID: 109550020');
        return;
    end
    
pause(0.033);

end

function m_KeyCallBack_p2(src,event)
    disp(event.Key);
	global key_1;
	global key_2;
	global key_3;
	global key_4;
	global key_m;
	global key_q;
    
    switch(event.Key) 
        case '1'
            key_1 = true;
        case '2'
            key_2 = true;
        case '3'
            key_3 = true;
        case '4'
            key_4 = true;
        case 'm'
            key_m = true;
        case 'q'
            key_q = true;
        otherwise
            
    end
    
    
 end