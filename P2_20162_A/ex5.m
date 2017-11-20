x = [0.2 0.3 0.5 0.7]';
y = [0.895 0.968 0.962 1.244]';

n = size(x,1)

T = zeros(n,n);

T(:,1) = y;

for i=2:n
  for j=i:n
    T(j,i) = (T(j,i-1)-T(j-1,i-1))/(x(j)-x(j-i+1));
  endfor
endfor

a3 = T(3,3);

printf("%1.5f\n", a3);