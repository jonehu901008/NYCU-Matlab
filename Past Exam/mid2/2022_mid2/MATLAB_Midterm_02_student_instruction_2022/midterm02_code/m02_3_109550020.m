%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: …
% Problem number: …
% Student Name:  …
% Student ID: …
% Email address: …
% Department:
% Date: ….
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all; clf;clear;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all; clear; clc;		% close all windows
                            % clear variables, and clear screen
disp('Midterm Problem 2.3') % show Midterm Problem 2.3
disp('Jing-Hong Hu; 109550020');

global key_pressed_quit;
global key_pressed_mode;
global key_pressed_enter;
global key_pressed_stop;
key_pressed_enter = false;
key_pressed_stop = false;
key_pressed_mode = true;
key_pressed_quit = false;
fig_h = figure;
set(fig_h,'KeyPressFcn',...
    @m_KeyCallBack_planets); % callback function
t = 0;
v = [7 0.2];
p = [0 45];
dt = 0.2;
M = 3000;
m = 0.5;
h = 0.001;
d = 0.015;
tmax = 50;

x = [];
y = [];
p_h = [];
v_h = [];
a_h = [];
d_h = [];
t_h = [];
Step = [];
step = 0;
N = 4;
cases = 0;
move = 1;
% start = 0;
% while(~start)
	% if (key_pressed_enter)
		% key_pressed_enter = false;
		% start = 1;
	% end
% end
while t <= tmax
	F = -(p*m*M)/(norm(p)*(p*p'));
    a = F/m - h*(v*v')*v/norm(v) - d*v*exp(-2.5*cos(4*t)) ;	% acceleration, -d*v is a damping force
    v = v + a*dt;	% velocity
    p = p + v*dt; 	% position
    x = [x p(1)];
    y = [y p(2)];
	p_h = [p_h; p];
	v_h = [v_h norm(v)];
	a_h = [a_h norm(a)];
	d_h = [d_h norm(p)];
    step = step+1;
    Step = [Step, step];
    t = t + dt;
    subplot(1,2,1)
    plot(x, y, Color='green')
	len = length(p_h(:,1));
	if len > N
		for i = 0:1:N-1
			now = p_h(len-i, :);
			viscircles([now(1), now(2)], 1, Color='red');
		end
	end
    axis([-50 50 -50 50])
	pbaspect([1 1 1])
	if cases == 0
		subplot(2,2,2)
		plot(Step, v_h, Color='blue')
		xlabel('Steps')
		ylabel('Speed (km/h)')
		subplot(2,2,4)
		plot(Step, d_h, Color='red')
		xlabel('Steps')
		ylabel('Distance (km/h)')
    elseif cases == 1
		subplot(2,2,2)
		plot(Step, a_h, Color='black')
		xlabel('Steps')
		ylabel('Acceleration (km/s2)')
		subplot(2,2,4)
		plot(Step, v_h, Color='blue')
		xlabel('Steps')
		ylabel('Speed (km/h)')
	end
	while(~move)
		if (~key_pressed_stop)
			move = 1;
		end
	end
	
    if (key_pressed_quit)
        close all;
        disp('Student ID: 109550020');
        disp('Student Name: Jing-Hong Hu');
        return;
    end
	
	% if (key_pressed_mode)
		% cases = 1;
	% else
		% cases = 0;
	% end
	if (key_pressed_stop)
		move = 0;
	end	
	if(t == tmax/2)
		cases = 1;
	end
	if(t == 3*tmax/5)
		cases = 0;
	end
	if(t == tmax*4/5)
		pause(3)
	end
	pause(0.01)
end
while 1
	if (key_pressed_quit)
		close all;
		disp('Student ID: 109550020');
		disp('Student Name: Jing-Hong Hu');
		return;
	end
end
function m_KeyCallBack_planets(src,event)
    disp(event.Key);
    global key_pressed_quit;
    global key_pressed_enter;
    global key_pressed_mode;
    global key_pressed_stop;
    switch(event.Key) 
        case 'return'
            key_pressed_enter = true;
        case 'q'
            key_pressed_quit = true;
        case 's'
            key_pressed_stop = ~key_pressed_stop;
        case 'space'
            key_pressed_mode = ~key_pressed_mode;
        otherwise
            
    end
end