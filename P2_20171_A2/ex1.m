A = [2 0 -1 0;1 -4 1 0;-1 0 3 1;0 -1 0 -2];
b = [1.1 3.1 1.9 -2.1]';
x = [-1 1 -1 -2]'; 

N = 4;
iter = 1;
n = size(A,1);
x0 = x;

while(iter <= N)
  for i=1:n
    x(i) = (b(i) - A(i,[1:i-1,i+1:n])*x([1:i-1,i+1:n]))/A(i,i);
  endfor
  
  x0 = x;
  iter = iter + 1;
endwhile

res = x(2)/x(1);

printf("%1.8e\n", res);