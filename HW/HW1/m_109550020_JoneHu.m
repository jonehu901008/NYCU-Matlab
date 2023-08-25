%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 2/22/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
disp('Problem 1.1');	% show "Problem 1.1"
clear, clc, clf;
n = 4;
P = [-2*n:2:2*n];
disp('Problem 1.2');	% show "Problem 1.2"
clear, clc, clf;
n = 10;
Q = meshgrid(1:1:n).^2;
disp('Problem 1.3');	% show "Problem 1.3"
clear, clc, clf;
n = 10;
R1 = [1:1:n];
R = (-1).^(R1-1).*R1;
disp('Problem 1.4');	% show "Problem 1.4"
clear, clc, clf;
n = 6;
S1 = [1:1:n];
S2 = ((-1).^(0:1:n)*x.^factorial(1:2:2*n+1));
S = S1 + S2;
disp('Problem 1.5');	% show "Problem 1.5"
clear, clc, clf;
n = 17;
T = [1:1:n] + 4 - mod(0:n-1, 4);
disp('Problem 2.1');	% show "Problem 2.1"
clear, clc, clf;
r = 5;
[x, y] = meshgrid(-r:0.08:r);
z = y .* sin(x) .* cos(x) ./ (abs(x) + eps);
surf(x,y,z);
shading faceted;
disp('Problem 2.2');	% show "Problem 2.2"
clear, clc, clf;
x = 0:0.01:4;
y1 = x;
y2 = x.^2;
y3 = x.^3;
y4 = exp(x);
y5 = exp(-x);
y6 = log(x);
plot(x,y1,x,y2,x,y3,x,y4,x,y5,x,y6);
disp('Problem 2.3');	% show "Problem 2.3"
clear, clc, clf;
x1 = -10:0.001:10;
x2 = -10:0.5:10;
y1 = sin(x1)-x1;
y2 = sin(x2)-x2;
z1 = sin(y1.^2)-exp(x1)./x1;
z2 = sin(y2.^2)-exp(x2)./x2;
plot(x1,z1,x2,z2,'o');
disp('Problem 2.4');	% show "Problem 2.4"
clear, clc, clf;
[x, y] = meshgrid(-10:0.5:10);
z = (x+y)./(x.^2+y.^2+1);
meshc(x,y,z);
shading faceted;
clear
[x, y] = meshgrid(-10:0.01:10);
z = (x+y)./(x.^2+y.^2+1);
meshc(x,y,z);
shading faceted;
disp('Problem 2.5');	% show "Problem 2.5"
clear, clc, clf;
x = -10:0.05:10;
y1 = 0.5 + (x.*sin(x))./((x.^2).*exp(sin(x))+1);
y2 = cos(x).^2 + sin(x).^2;
plot(x,y1,x,y2);
size(x,2)
clear;