f = @(y,t) (sin(3*t) - 2*t*y) / t.^2;

function [y,t] = Ruku4(f,t0,y0,h,n)
  t = zeros(n+1,1);
  y = zeros(n+1,1);
  
  t(1) = t0;
  y(1) = y0;
  
  for i=1:n
    t(i+1) = t(i) + h;
    k1 = h * f(y(i),t(i));
    k2 = h * f(y(i)+k1/2,t(i)+h/2);
    k3 = h * f(y(i)+k2/2,t(i)+h/2);
    k4 = h * f(y(i)+k3,t(i)+h);
    y(i+1) = y(i) + ((k1 + 2*k2 + 2*k3 + k4) / 6);
  endfor
endfunction

[y,t] = Ruku4(f,1.1,2,0.02,45);

printf("%1.7e\n",y(46))