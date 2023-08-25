close all; clear; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fig_handle = figure;


                global key_pressed_op_1;
                        global key_pressed_op_2;
global key_pressed_return;
global key_pressed_op_previous;
                                    global key_pressed_op_next;
            global key_pressed_reset;
global key_pressed_quit;
key_pressed_op_1= false;
                                key_pressed_op_2= false;
key_pressed_return= false;
key_pressed_op_previous = false;
                            key_pressed_op_next = false;
key_pressed_quit = false;
                                key_pressed_reset = false;

set(fig_handle,'KeyPressFcn',...
                                     @m02_01_KeyCallBack_functions); % callback function

    a = 0.3;
                        b = 0.2;
while true
    
    
    clf
    
subplot(1,2, 1);
                syms x; syms y;

                            func = y^4+1;
d_func = diff(func, y);
                    s = solve(x == func, y)
ty0 = 0.5;
                tx0 = subs(func,y,ty0);

cpf = x;
                my_pdf = diff(cpf);
     
n = 100; y = rand(n,1);
            x1 = y.^4+1;

                        h = histogram(x1,'Normalization','pdf')
hold on

xval = [1; 2];
            xmin = min(xval)+0.00001;
                            xmax = max(xval)-0.00001;
                        dx = (xmax-xmin)/1000;
                                        x0 = xmin:dx:xmax;
                            f = double(subs(my_pdf, x, x0));

plot(x0,f,'LineWidth',3);
                        set(gca, 'Fontsize',15);

%str = "pdf of X1";
%tmsg = sprintf(str, mean(x1), std(x1), a, b);
%title(tmsg);

                            axis([xmin xmax 0 30]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2, 2);
                    syms x; syms y;

func = 1 - y^4;
                    d_func = diff(func, y);
s = solve(x == func, y)
ty0 = 0.5;
                tx0 = subs(func,y,ty0);

cpf = x^2;
            my_pdf = diff(cpf);

     
n = 100; y = rand(n,1);
                x1 = 1-y.^4;
h = histogram(x1,'Normalization','pdf')
            hold on

xval = [0; 1];
xmin = min(xval)+0.0001;
                                xmax = max(xval)-0.0001;
dx = (xmax-xmin)/1000;
x0 = xmin:dx:xmax;
f = double(subs(my_pdf, x, x0));

plot(x0,f,'LineWidth',3);
                                    set(gca, 'Fontsize',15);

%str = "pdf of X2";
%tmsg = sprintf(str, mean(x1), std(x1), a, b);
%title(tmsg);

axis([(xmin-0.001) (xmax+0.001) 0 100]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                                    while true
    if (key_pressed_op_1) 
                               key_pressed_op_1 = false;
                       break;
    end
    
    if (key_pressed_op_2) 
                                             key_pressed_op_2 = false;
        break;
    end
    
                if (key_pressed_quit) 
                     key_pressed_quit = false;
        disp('Student Name:xyz');
                                  disp('Student ID:111111');
        disp('Thanks for playing');
                      close all;
                  return;
        break;
                end
    
    
             pause(0.033333);
    
                                    end
    
                end