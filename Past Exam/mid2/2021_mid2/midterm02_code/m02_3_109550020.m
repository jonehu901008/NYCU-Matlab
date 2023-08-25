%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 2
% Problem number: 3
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 5/11/2022
% National Yang Ming Chiao Tung University, Taiwan
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all; clear; clc;		% close all windows
                            % clear variables, and clear screen
disp('Midterm Problem 2.3') % show Midterm Problem 2.3
disp('Jing-Hong Hu; 109550020');

d = 0.005;
t = 0;
dt = 0.3;
tmax = 100;
v = [6 0.1];
p = [0 40];
m = 1;
M = 2000;

x = [];
y = [];
p_h = [];
v_h = [];
a_h = [];
t_h = [];
step = 0;
Step = [];
N = 3;
while t <= tmax
	F = -(p*m*M)/(norm(p)*(p*p'));
    a = F/m - 2*d*v*sin(1.5*t)*exp(2*cos(t));	% acceleration, -d*v is a damping force
    v = v + a*dt;	% velocity
    p = p + v*dt; 	% position
    x = [x p(1)];
    y = [y p(2)];
	p_h = [p_h; p];
	v_h = [v_h norm(v)];
	a_h = [a_h norm(a)];
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
    subplot(2,2,2)
    plot(Step, v_h, Color='blue')
    subplot(2,2,4)
    plot(Step, a_h, Color='red')
    pause(0.01)
end

