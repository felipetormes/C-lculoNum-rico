x = [0.01 0.38 0.71 0.92 0.99]';
y = [sin(x)];

A = [x.^2 x.^1 x.^0];

p = inv(A'*A)*A'*y;

res = polyval(p,0.71);

printf("%1.8e\n",res);

#letra E