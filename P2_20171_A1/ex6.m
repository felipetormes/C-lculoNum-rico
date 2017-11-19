x = [0.01 0.38 0.71 0.92 0.99]';
y = [cos(x)];

n = size(x,1);

T = zeros(n,n);

T(:,1) = y;

for i=2:n
  for j=i:n
    T(j,i) = (T(j,i-1)-T(j-1,i-1))/(x(j)-x(j-i+1));
  endfor
endfor

res = T(2,2)/T(1,1);

printf("%1.8e\n",res);