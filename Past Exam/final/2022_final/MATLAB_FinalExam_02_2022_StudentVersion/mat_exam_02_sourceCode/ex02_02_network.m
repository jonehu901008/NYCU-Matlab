%
                        func_msg = {'k11', 'k12', 'k13', 'k14'}


                    msg = ["Function Graph"];
        title(msg);
    
                                    g11 = @(a,b)(a+b);
        g12 = @(a,b)(a-b);
                             g13 = @(a,b)(a.*b);
                  g14 = @(a,b)((1-a).*(1-b));
        %
                    dx = 0.1;
        dy = 0.05;
                    x = -5:dx:5;
        y = -5:dy:5;
        
                          [X Y] = meshgrid(x,y);
        
           k11 = g11(X,Y);
        k12 = g12(X,X);
                       k13 = g12(X,Y);
        k14 = g12(Y,Y);
        
        %
        % The dimension of each item kij is 61x61.
        %
                         F = [k11; k12];
        
        
        n = size(func_msg);
                     numFunc =n(2);
                             index = 1;

                     ss = 101;
      s0 = index*ss+1-ss;
          s1 = index*ss+ss-ss;
    Z = F(s0:s1,:);
            %
            
      meshc(X,Y,Z)
            colorbar
            
            %figure(h_fig); % show at the top
            
            pause(0.0333);











