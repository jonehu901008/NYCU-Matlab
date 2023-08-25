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
global key_s;
global key_q;

key_1 = false;
key_2 = false;
key_3 = false;
key_4 = false;
key_m = true;
key_s = false;
key_q = false;

set(h_fig,'KeyPressFcn',...
    @m_KeyCallBack_p2); % callback function

mode = 0;
op = 0;
while true
	if(key_m)
		key_m = false;
		key_q = false;
		clf;
		plot(0.5,0.5)
		title(["Key Usage:",
			   "Key 1: Curve erasing",
			   "Key 2: Image masks",
			   "Key 3: Region filling and clearing",
			   "Key 4: Moving spotlight",
			   "Key m: Return to main menu immediately",
			   "Key s: stop the animation (if any)",
			   "Key q: Quit the program when in the main menu"
				])
		m = 1;
	end
	
	if(key_1)
		m = 0;
		key_1 = false;
		for i = -5:0.1:5;
			if key_s | key_m
				key_s = false;
				break;
			end
			x = i:0.01:5;
			y = (exp(x)-exp(-x))./(exp(x)+exp(-x))+0.01*sin(3*x)./(1+x.^2)+0.05*cos(15*x);
			f = (i+5)/10;5;
			R0=1; G0=0; B0=0; R1=0; G1=0; B1=1;
			r = (1-f)*R0+f*R1;
			g = (1-f)*G0+f*G1;
			b = (1-f)*B0+f*B1;
			plot(x, y, Color=[r g b], LineWidth=4)
			title(["Press s to stop"])
			axis([-5 5 -1.5 1.5])
			pause(0.01);
		end
		title(["Press m to return to main menu..."])
	end
	
	if(key_2)
		key_2 = false;
		m = 0;
		op = 1 - op;
		w = 320;
		h = 320;
		I = imread("tmp.png");
		I1 = imresize(I,[320 320]);
		Id = im2double(I1);
		imshow(I1);
		if op == 0
			x = 1:w;
			z = abs(cos(x/w*4*pi));
			for i = x		% x: number of columns
				K(:,i,1) = z(i);
				K(:,i,2) = z(i);
				K(:,i,3) = z(i);
			end
		elseif op == 1
			x = 1:h;
			z = abs(cos(x/h*4*pi));
			for i = x		% x: number of columns
				K(i,:,1) = z(i);
				K(i,:,2) = z(i);
				K(i,:,3) = z(i);
			end
		end
		imshow(Id.*K);
		title(["Press m to return to main menu..."])
	end
	
	if(key_3)
		m = 0;
		mode = 1-mode;
		key_3 = false;
		t = 0:0.05:2*pi;
		r = [2*sin(t).*cos(2*t); sin(4*t).*cos(t)/2];
		for i = t
			if key_s | key_m
				key_s = false;
				break;
			end
			theta = 0:0.05:i;
			[x y] = pol2cart(theta, r(mode+1,1:length(theta)));
			polar(theta, r(mode+1,1:length(theta)))
			patch(x, y, 'y')
			title(["Press s to stop"])
			
			pause(0.05)
		end
		title(["Press m to return to main menu..."])
	end
	
	if(key_4)
		m = 0;
		key_4 = false;
		I = imread("tmp.png");
		I1 = imresize(I,[320 320]);
		imshow(I1);
		r1 = 160;
		r2 = 80;
		i = 1;
		while true
			for j = 1:50:320
				if key_s | key_m
					break;
				end
				t = 0:0.1:2*pi;
				if mod(i,4) == 1
					xc = j; yc = 0;
				elseif mod(i,4) == 2
					xc = 320; yc = j;
				elseif mod(i,4) == 3	
					xc = 320-j; yc = 320;
				else
					xc = 0; yc = 320-j;
				end
				x1 = r1*cos(t) + xc;
				y1 = r1*sin(t) + yc;
				x2 = r2*cos(t) + xc;
				y2 = r2*sin(t) + yc;
				spotlight = ones(length(x1));
				spotlight0 = ones(length(x2));
				spotlight1 = spotlight(1:3)*0.9;
				spotlight2 = spotlight0(1:3)*0.9;
				spotlight2(1:2) = spotlight(1:2) + (1-spotlight(2:3))*0.7;
				imshow(I1)
				title(["Press s to stop"])
				patch(x1, y1, spotlight1, 'FaceAlpha', 0.5, 'EdgeColor', 'None')
				patch(x2, y2, spotlight2, 'FaceAlpha', 0.5, 'EdgeColor', 'None')
				
				pause(0.1)
			end
			title(["Press m to return to main menu..."])
			if key_s | key_m
				key_s = false;
				break;
			end
			i = i+1;
		end
	end
	
    if (key_q & m) 
		key_q = false;
        close all;
        disp('Jing-Hong Hu;109550020');
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
	global key_s;
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
        case 's'
            key_s = true;
        case 'q'
            key_q = true;
        otherwise
            
    end
    
    
 end