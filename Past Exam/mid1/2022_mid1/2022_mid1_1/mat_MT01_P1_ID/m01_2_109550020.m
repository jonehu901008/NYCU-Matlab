%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midterm Number: 1
% Problem number: 1.2
% Student Name: Jing-Hong Hu
% Student ID: 109550020
% Email address: henryhu.cs09@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/11/2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Midterm Problem 1.2') 	% show Midterm Problem 1.2
disp('Jing-Hong Hu; 109550020');
while 1
    A = input("Please input a:");
    if A <= 0
        disp("Thanks for playing")
        return;
    end
    o = input("Please input an option:");
    if o == 1
        d = 5;
    else
        d = 10;
    end
    clf;
    W = -5:1:5;
    for B = W
        y = -50:0.1:50;
        a = 1.1+tanh(cos(y).^2);
        b = A*(y.*sin(y)+2)./exp(cos(y));
        c = -B*(3+exp(-y).*cos(y)+sin(y));
        x1 = (-b+sqrt(b.^2-4*a.*c))./a*2;
        x2 = (-b-sqrt(b.^2-4*a.*c))./a*2;
        plot(x1,y,'LineWidth',3);
        plot(x2,y,'LineWidth',3);
        figure(1);
        axis([-d d -d d]);
        pause(0.05);
        hold on
    end
end