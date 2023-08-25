%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 2
% Problem number: 1
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 5/11/2022
% National Yang Ming Chiao Tung University, Taiwan
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all; clear; clc;		% close all windows
                            % clear variables, and clear screen
disp('Midterm Problem 2.1') % show Midterm Problem 2.1
disp('Student Name; Student ID');

op = input('Select an option for layout 1) horizontal 2) Vertical: ');
if op == 1
    p1 = 1;
    p2 = 2;
elseif op == 2
    p1 = 2;
    p2 = 1;
else
    return;
end
figure(1)
a = 2;
b = 20;
t = 0:0.02:6*pi;
e = [-pi:0.2:-eps() eps():0.2:pi];
pre_t = t(1:length(t)-75);
X = (b-a) .* sin(a.*pre_t) + b.*sin((a/b).*pre_t);
Y = (b-a) .* cos(a.*pre_t) + b.*cos((a/b).*pre_t);
E = [];
A = 7;
count = 1;
for back_t = t(length(t)-75:end)
    x = (b-a)*sin(a*back_t) + b*sin((a/b)*back_t);
    y = (b-a)*cos(a*back_t) + b*cos((a/b)*back_t);
    X = [X, x];
    Y = [Y, y];
    subplot(p1, p2, 1)
    plot(X, Y)
    patch(X, Y, 'y')
    axis([-30 40 -40 40]);
    pause(0.05)
    if count <= length(e)
        subplot(p1, p2, 2)
		E = [E e(count)];
        R = A*sin(2*E)./E;
        [x1 y1] = pol2cart(E, R);
        polar(E, R, '-o')
        patch(x1, y1, 'y')
		count = count+1;
    end
end
