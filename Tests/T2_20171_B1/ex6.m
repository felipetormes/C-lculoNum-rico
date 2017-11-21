x = [0.262 0.785 1.309 2.879]';
y = [-0.918 0.224 1.307 1.814]';

T(:,1) = y;

n = size(x,1);

for i=2:n
  for j=i:n
    T(j,i) = (T(j,i-1)-T(j-1,i-1))/(x(j)-x(j-i+1));
  endfor
endfor

a3 = T(3,3);

printf("%1.8e\n",a3)