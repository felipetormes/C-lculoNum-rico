A = [3 1 -1 0;0 -3 1 -1;-1 1 3 0;0 0 -1 -2];
b = [-1.5 -4.4 5.9 -2.9]';
x = [3 2 -3 2]';

N = 4;
n = size(A,1);
iter = 1;
x0 = x;

while(iter <= N)
  for i=1:n
    x(i) = (b(i) - A(i,[1:i-1,i+1:n])*x0([1:i-1,i+1:n]))/A(i,i);
  endfor
  iter = iter + 1;
  x0 = x;
endwhile

res = x(1);

printf("%1.8e\n",res)