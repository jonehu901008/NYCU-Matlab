%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 2
% Problem number: 2
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 5/12/2022
% National Yang Ming Chiao Tung University, Taiwan
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all; clear; clc;		% close all windows
                            % clear variables, and clear screen
disp('Midterm Problem 2.2') % show Midterm Problem 2.2
disp('Jing-Hong Hu; 109550020');

input('Please press enter to continue.')
op = input('Select an option for layout 1) horizontal 2) Vertical: ');
p = [0 0];
if op == 1
    p(1) = 1;
    p(2) = 2;
elseif op == 2
    p(1) = 2;
    p(2) = 1;
else
    return;
end

di = 0;
dj = 0;
while 1
	if di < 1 || dj < 1 || di > 10 || dj > 10
		d = input('Please input [di dj]:');
		di = d(1);
		dj = d(2);
	else
		break
	end
end
figure(1)

a = -pi:0.02:pi;
a1 = a;
a2 = [];
r = cos(4*a).*sin(2*a);
count1 = 1;
count2 = 1;
max_count = length(a);
e1 = max_count;
e2 = 1;
while 1
    if e1 ~= 1
        subplot(p(1), p(2), 1)
		e1 = max_count-count1+1;
		if e1 < 1
			e1 = 1;
		end
		a1 = a(1:e1);
        r1 = cos(4*a1).*sin(2*a1);
        p1 = polar(a1, r1);
		p1.LineWidth = 3;
		p1.Color = [0.0, 0.0, 0.7];
		count1 = count1+di;
    end
	
    if e2 ~= max_count
        subplot(p(1), p(2), 2)
		e2 = count2;
		if e2 > max_count;
			e2 = max_count;
		end
		a2 = [a2 a(length(a2)+1:e2)];
        r2 = cos(4*a2).*sin(2*a2);
        p2 = polar(a2, r2);
		p2.LineWidth = 3;
		p2.Color = [0.7, 0.3, 0.0];
		count2 = count2+dj;
    end
	if e1 == 1 && e2 == max_count
		break;
	end
    pause(0.05)
end
