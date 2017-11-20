A = [-7 2 -2;-1 3 1/2;-3 4 -8];
b = [-2 2/3 -3]';
x = [3 3 4]';

N = 3;
n = size(A,1);
x0 = x;
iter = 1;

while(iter <= N)
  for i=1:n
    x(i) = (b(i) - A(i,[1:i-1,i+1:n])*x([1:i-1,i+1:n]))/A(i,i);
  endfor
  
  x0 = x;
  iter = iter + 1;
endwhile

printf("%1.7f\n", x(2));