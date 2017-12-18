f = @(y,t) (sin(3*t) - 2*t*y) / t.^2;

function [y,t] = euler(f,t0,y0,h,n)
  t = zeros(n+1,1);
  y = zeros(n+1,1);
  
  t(1) = t0;
  y(1) = y0;
  
  for i=1:n
    t(i+1) = t(i) + h;
    y(i+1) = y(i) + h * f(y(i),t(i));
  endfor
endfunction

[yeuler,t] = euler(f,1.1,2,0.02,45);

printf("%1.7e\n",yeuler(46))