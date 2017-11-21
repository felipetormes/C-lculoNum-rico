x = [0.01 0.38 0.71 0.92 0.99]';
y = [cos(x)];

A = [exp(x) x.^2];

f = inv(A'*A)*A'*y;

res = f(1)*f(2);

printf("%1.8e\n",res);