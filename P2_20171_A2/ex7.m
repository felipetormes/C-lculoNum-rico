x = [0.01 0.38 0.71 0.92 0.99]';
y = [cos(x)];

A = [x.^3 x.^2 x.^1 x.^0];

p = inv(A'*A)*A'*y;

res = polyval(p,0.712);

printf("%1.8e\n",res);