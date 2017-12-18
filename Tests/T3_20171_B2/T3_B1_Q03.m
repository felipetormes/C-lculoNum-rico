f = @(x) (sin(x.^2 - 1) + 2*cos(x)) / (sin(x).^4 + cos(x).^4);

a = -1.5;
b = -0.5;
h = (b-a);

Simp = (h/6) * (f(a) + 4*f((a+b)/2) + f(b));

printf("%1.7e\n",Simp)