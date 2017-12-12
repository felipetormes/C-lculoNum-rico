f = @(x) (2*sin(exp(-x.^3) + 2)) / (x.^2 + 1);

a = -0.8;
b = 0.2;
n = 10;
h = (b-a)/n;
x = -0.8:h:0.2;
s = 0;

for i=1:n
    s += h/2*(f(x(i)) + f(x(i+1)));
endfor

printf("%1.5e\n",s);