disp('Q7');

function u=euler_mod(h,Tmax)  
  y= 1.4;  
  itmax = Tmax/h;  
 
  for n=1:itmax  
    t=(n-1)*h;  
    k1 = ((4*t)/y- t*y);  
    y_til = y +h*k1;  
    k2 = ((4*(t+h))/y_til - (t+h)*y_til);  
    y = y + h * (k1 + k2)/2; 
  endfor
  
  printf("%1.6e\n",y);
  
endfunction
