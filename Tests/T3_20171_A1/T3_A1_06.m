f = @(x) (2*sin(exp(-x.^3) + 2)) / (x.^2 + 1);

a = -0.8;
b = 0.2;

F = @(u) (b-a)/2*f((b-a)/2*(u+1)+a);
In = F(sqrt(3)/3) + F(-sqrt(3)/3);

printf("%1.6e\n",In);