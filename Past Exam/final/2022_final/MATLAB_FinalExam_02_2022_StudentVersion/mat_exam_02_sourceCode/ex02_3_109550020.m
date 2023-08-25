close all; clear; clc;		% close all windows
                            % clear variables, and clear screen
disp('Final2 Problem 3');
disp('Jing-Hong Hu; 109550020');

global key_q;
global key_s;
global key_m;
global key_k;
global key_r;
key_q = false;
key_s = false;
key_m = false;
key_k = false;
key_r = true;

h_fig = figure;
set(h_fig,'KeyPressFcn', @m_KeyCallBack_p3); % callback function
t = 0;
tmax = 50;
while t <= tmax
	pause(0.1)
	if (key_k)
		key_k = false;
		N = N+1;
		if N > 10
			N = 10;
		end
	end
	if (key_m)
		key_m = false;
		M = M+100;
		if M > 4000
			M = 4000;
		end
	end
	if (key_r)
		key_r = false;
		t = 0;
		v = [8 0.3];
		p = [2 50];
		dt = 0.2;
		M = 3500;
		m = 0.5;
		h = 0.005;
		d = 0.02;
		x = [];
		y = [];
		p_h = [];
		v_h = [];
		a_h = [];
		d_h = [];
		t_h = [];
		Step = [];
		step = 0;
		N = 1;
		dis = 0;
	end
    if (key_q)
		key_q = false;
        close all;
        disp('Student ID: 109550020');
        disp('Student Name: Jing-Hong Hu');
        return;
    end
    if (key_s)
		key_s = false;
		while(1)
			pause(0.33)
			if(key_s)
				key_s = false;
				break;
			end
		end
    end
	F = -(p*m*M)/(norm(p)*(p*p'));
    a = F/m - h*(v*v')*v/norm(v) - d*v*exp(-sin(5*t)) ;	% acceleration, -d*v is a damping force
    v = v + a*dt;	% velocity
    p = p + v*dt; 	% position
    x = [x p(1)];
    y = [y p(2)];
	p_h = [p_h; p];
	v_h = [v_h norm(v)];
	a_h = [a_h norm(a)];
	d_h = [d_h norm(p)];
	dis = dis + abs(norm(v)*dt);
    step = step+1;
    Step = [Step, step];
    t = t + dt;
    subplot(1,2,1)
    plot(x, y, Color='green')
	title(sprintf('N=%d; M=%d', N, M));
	len = length(p_h(:,1));
	if len > N
		for i = 0:1:N-1
			now = p_h(len-i, :);
			viscircles([now(1), now(2)], 1, Color='red');
		end
	end
    axis([-50 50 -50 50])
	pbaspect([1 1 1])
	subplot(2,2,2)
	plot(Step, v_h, Color='blue')
	title(sprintf("Average speed:%.2f", mean(v_h)));
	xlabel('Steps')
	ylabel('Speed (km/s)')
	subplot(2,2,4)
	plot(Step, d_h, Color='red')
	title(sprintf("Total travel distance:%.2f", dis));
	xlabel('Steps')
	ylabel('Distance (km)')
end
% close all;
disp('Student ID: 109550020');
disp('Student Name: Jing-Hong Hu');

function m_KeyCallBack_p3(src,event)
    disp(event.Key);
    global key_q;
    global key_s;
    global key_m;
    global key_k;
    global key_r;
    switch(event.Key)
        case 'q'
            key_q = true;
        case 's'
            key_s = true;
        case 'k'
            key_k = true;
        case 'm'
            key_m = true;
        case 'r'
            key_r = true;
        otherwise
    end
end