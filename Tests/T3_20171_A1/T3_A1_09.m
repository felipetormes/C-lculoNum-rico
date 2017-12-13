f = @(y,t) ((4*t)/y) - (t*y); 

function y = rk4(f, y0, t0, h, N)
    y = zeros(N+1,1);
    t = zeros(N+1,1);
    
    t(1) = t0;
    y(1) = y0;
    
    for n = 1:N
        t(n+1) = t(n) + h;
        k1 = h*f(y(n),t(n));
        k2 = h*f(y(n)+k1/2,t(n)+h/2);
        k3 = h*f(y(n)+k2/2,t(n)+h/2);
        k4 = h*f(y(n)+k3,t(n)+h);
        
        y(n+1) = y(n) + (k1 + 2*k2 + 2*k3 + k4)/6;
    end
endfunction

ynrk4 = rk4(f,1.4,0,0.02,51);
ynrk4(52)