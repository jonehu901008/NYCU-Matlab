%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exam Number: 3
% Problem number: 1
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 6/9/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clear; clc;

disp('Final2 Problem 1')
disp('Jing-Hong Hu;109550020')

h_fig = figure;

global key_1;
global key_2;
global key_q;

key_1 = false;
key_2 = false;
key_q = false;
key = true;

set(h_fig,'KeyPressFcn',...
    @m_KeyCallBack_p1); % callback function

n = 10000;
a = 0.3;
b = 0.2;
while(1)
	if(key_1)
		key_1 = false;
		a = a-0.1;
		key = true;
	end
	if(key_2)
		key_2 = false;
		a = a+0.1;
		key = true;
	end
	if(key_q)
		key_q = false;
		disp('Jing-Hong Hu;109550020')
		close all;
		return
	end
	if(key)
		key = false;
		Y = rand(n,1);
		X1 = b/a*cos(a*pi*Y.^2/2);
		X2 = b-a*cos(a*Y.^2/2);
		subplot(1, 2, 1)
		h1 = histogram(X1,'Normalization','pdf');
		xlabel(["X1"])
		hold on
		syms y; syms p1(y);
		p1(y) =  b/a*cos(a*pi*y.^2/2);
		g1 = finverse(p1);
		f1 = diff(g1);
		z1 = [h1.BinEdges(1), h1.BinEdges(length(h1.BinEdges))];
		fplot(-f1, z1, LineWidth=2, Color='r')
		hold off
		z = [h1.BinEdges(1:length(h1.BinEdges))];
		M = mean(z);
		SD = std(z);
		title(sprintf('pdf of X = b/a*cos(a*pi*Y^2/2);\nMean:%.2f; STD:%.2f;\na:%.2f; b:%.2f', M, SD, a, b))
		
		subplot(1, 2, 2)
		h2 = histogram(X2,'Normalization','pdf');
		xlabel(["X2"])
		hold on
		syms p2(y);
		p2(y) = b-a*cos(a*y.^2/2);
		g2 = finverse(p2);
		f2 = diff(g2);
		z2 = [h2.BinEdges(1), h2.BinEdges(length(h2.BinEdges))];
		fplot(f2*a/abs(a), z2, LineWidth=2, Color='r')
		hold off
		z = [h2.BinEdges(1:length(h2.BinEdges))];
		M = mean(z);
		SD = std(z);
		title(sprintf('pdf of X = b-a*cos(a*Y^2/2);\nMean:%.2f; STD:%.2f;\na:%.2f; b:%.2f', M, SD, a, b))
	end
	pause(0.033)
end

function m_KeyCallBack_p1(src,event)
    disp(event.Key);
	global key_1;
	global key_2;
	global key_q;
    
    switch(event.Key) 
        case '1'
            key_1 = true;
        case '2'
            key_2 = true;
        case 'q'
            key_q = true;
        otherwise
    end
 end