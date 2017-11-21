x = [0.01 0.38 0.71 0.92 0.99]';
y = [sin(x)];

A = [cos(x) -x.^2];

p = inv(A'*A)*A'*y;

res = p(2)/p(1);

printf("%1.8e\n",res);

#letra B