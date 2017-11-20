x = [0.01 0.38 0.71 0.92 0.99]';
y = [cos(x)];
A = [exp(x) x.^2];

p = inv(A'*A)*A'*y;

res = p(1)/p(2);

printf("%1.8e\n",res);