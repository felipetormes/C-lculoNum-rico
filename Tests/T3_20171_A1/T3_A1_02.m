f = @(x) (2*sin(exp(-x.^3) + 2)) / (x.^2 + 1);

h = 0.1;
x1 = -0.1;
x2 = 0.2;

D1 = (f(x1 + h) - f(x1)) / h;
D2 = (f(x2 + h) - f(x2)) / h;

res = D1 + D2;

printf("%1.6e\n",res);