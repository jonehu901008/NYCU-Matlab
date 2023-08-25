disp('Problem 2.1');	% show "Problem 2.1"
clear, clc, clf;
r = 5;
[x, y] = meshgrid(-r:0.08:r);
z = y .* sin(x) .* cos(x) ./ (abs(x) + eps);
surf(x,y,z);
% shading faceted;