f = @(x) (sin(x.^2 - 1) + 2*cos(x)) / (sin(x).^4 + cos(x).^4);

x0 = 1;
h = 0.03;

D = (f(x0 - 2*h) - 4*f(x0 - h) + 3*f(x0)) / (2*h);

printf("%1.7e\n",D)