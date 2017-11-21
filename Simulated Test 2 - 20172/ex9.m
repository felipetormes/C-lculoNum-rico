x = [0.01 0.38 0.71]';
y = [sin(x)];

A = [x.^3 x.^2 x.^0];

p = A\y;

f = @(x) p(1)*x.^3 + p(2)*x.^2 + p(3);

res = f(0.1);

printf("%1.8e\n",res);

#letra D