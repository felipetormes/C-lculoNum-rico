x = [0.01 0.38 0.71 0.92 0.99]';
y = [sin(x)];

T(:,1) = y;

n = size(x,1);

for i=2:n
  for j=i:n
    T(j,i) = (T(j,i-1)-T(j-1,i-1))/(x(j)-x(j-i+1));
  endfor
endfor

res = T(3,3);

printf("%1.8e\n",res);

#letra A