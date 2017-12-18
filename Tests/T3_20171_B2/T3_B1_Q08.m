format long

f = @(y,t) (sin(3*t) - (2*t*y)) / (t.^2);

function [y,t]=euler_mod(f,t0,y0,h,n)  
  y = zeros(n+1,1); 
  t = zeros(n+1,1);
  y_til = zeros(n+1,1);
  
  y(1) = y0;
  t(1) = t0;
 
  for n=1:n
    t(n+1) = t(n) + h; 
    y_til(n+1) = y(n) + h*f(y(n),t(n)); 
    y(n+1) = y(n) + (h/2) * (f(y(n),t(n)) + f(y_til(n+1),t(n+1)));
  endfor
endfunction

[yeuler,t] = euler_mod(f,1.1,2,0.02,3);
[yeuler,t]

function [y,t] = ab4(f, t0, t1, t2, t3, y0, y1, y2, y3, h, n) #Adam-Bashforth de 3º Ordem
    y = zeros(n+1, 1);
    t = zeros(n+1, 1);
    
    t(1) = t0;
    t(2) = t1;
    t(3) = t2;
    t(4) = t3;
    y(1) = y0;
    y(2) = y1;
    y(3) = y2;
    y(4) = y3;
    
    
    for n = 4:n
        t(n+1) = t(n) + h;
        y(n+1) = y(n) + h*(55*f(y(n),t(n))-59*f(y(n-1),t(n-1))+37*f(y(n-2),t(n-2))-9*f(y(n-3),t(n-3)))/24;
    endfor
endfunction

[yab4,t] = ab4(f, t(1), t(2), t(3), t(4), yeuler(1), yeuler(2), yeuler(3), yeuler(4), 0.02, 45);
[yab4,t]