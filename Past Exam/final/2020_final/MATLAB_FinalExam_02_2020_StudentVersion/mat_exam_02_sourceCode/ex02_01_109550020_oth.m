%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exam Number: 3
% Problem number: 1
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 6/7/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clear; clc;

disp('Final2 Problem 1')

close all; clear; clc;		% close all windows
disp('Final Exam Problem 2.1')
disp('Student Name; Student ID');
n = 10000;
Y = rand(n,1);
a = input('please input a in [-1 1]: ');
%n = input('please input n:');
X1 = a.*cos(pi.*Y.^2./2) - a;
X2 = a.*cos(pi.*Y.^2./2) + a;

syms x; syms y; syms p(y);
p(y) =  a.*cos(pi.*y.*y/2) - a;
g = finverse(p);
f = diff(g);
syms x2; syms y2; syms p2(y2);
p2(y2) =  a.*cos(pi.*y2.*y2/2) + a;
g2 = finverse(p2);
f2 = diff(g2);
hold on
h = histogram(X1, 'Normalization', 'pdf');
h2 = histogram(X2, 'Normalization', 'pdf');
z = [h.BinEdges(1): h.BinEdges(length(h.BinEdges))];
z2 = [h2.BinEdges(1): h2.BinEdges(length(h2.BinEdges))];
for zz = [0.03:0.03:1];
    clf
    subplot(1, 3, 1)
    h = histogram(Y, 'Normalization', 'pdf');
    hold on
    title("PDF of Y");
    xlabel("Y")
    line([0, 1],[1,1], 'Color', 'red')
    hold on
    plot(zz, 1, '.', markersize = 20);
    
    subplot(1, 3, 2)
    h = histogram(X1, 'Normalization', 'pdf');
    hold on
    str = "PDF of that shit\nM:%f;SD:%f; a = %f;";
    xlabel("X1")
    tmsg = sprintf(str, mean(X1), std(X1), a);
    title(tmsg);
    if a > 0
        fplot(-f, z);
        plot(a*cos(pi*zz*zz/2)-a, -f(a.*cos(pi*zz*zz/2)-a), '.', markersize = 20);
    else
        fplot(f, z);
        plot(a*cos(pi*zz*zz/2)-a, f(a.*cos(pi*zz*zz/2)-a), '.', markersize = 20);
    end
    
    subplot(1, 3, 3)
    h2 = histogram(X2, 'Normalization', 'pdf');
    hold on
    str = "PDF of that shit\nM:%f;SD:%f; a = %f;";
    xlabel("X2")
    tmsg = sprintf(str, mean(X2), std(X2), a);
    title(tmsg);
    if a > 0
        fplot(-f2, z2);
        plot(a*cos(pi*zz*zz/2)+a, -f2(a.*cos(pi*zz*zz/2)+a), '.', markersize = 20);
    else
        fplot(f2, z2);
        plot(a*cos(pi*zz*zz/2)+a, f2(a.*cos(pi*zz*zz/2)+a), '.', markersize = 20);
    end
    pause(0.1)
end