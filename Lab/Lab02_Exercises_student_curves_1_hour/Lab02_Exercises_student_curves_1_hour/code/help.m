clf;
t = 0;
v = [6 0.1];
p = [0 40];
M = 2000; 
m = 1;
dt = 0.3;
a = 0;
d = 0.005;
T = [];
P = [];
Speed = [];
Step = [];
Dis = [];
step = 0;
figure(1);
while t < 100
    F = -(p.*m.*M)./((norm(p)).*(p*p'));
    a = F./m - 2*d.*v.*sin(1.5*t).*exp(2.*cos(t));
    v = v + a.*dt;
    p = p + v.*dt;
    t = t + dt;
    T = [T, p(1)];
    P = [P, p(2)];
    Speed = [Speed, sqrt(v(1)^2 + v(2)^2)];
    Dis = [Dis, sqrt(p(1)^2 + p(2)^2)];
    step = step+1;
    Step = [Step, step];
    subplot(2, 2, [1,3])
    cur = size(T);
    plot(T, P, 'g');
    hold on;
    if cur(2) > 2
        plot(T(cur(2)), P(cur(2)), '.r', 'MarkerSize',20);
        plot(T(cur(2)-1), P(cur(2)-1), '.r', 'MarkerSize',20);
        plot(T(cur(2)-2), P(cur(2)-2), '.r', 'MarkerSize',20);
        %disp('y')
    end
    axis([-50 50 -50 50])
    subplot(2, 2, 2)
    plot(Step, Speed,'b');
    subplot(2, 2, 4)
    plot(Step, Dis,'r');
    pause(0.1)
    clf
end