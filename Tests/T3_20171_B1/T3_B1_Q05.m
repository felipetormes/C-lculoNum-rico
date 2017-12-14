f = @(x) (sin(x.^2-1) + cos(x)) / (sin(x).^4 + cos(x).^4);

a = -2;
b = -1;
n = 7;
h = (b-a)/n;
x = a:h:b;
s = 0;

for i=1:n
    s += (h/2) * (f(x(i)) + f(x(i+1)));
endfor

printf("%1.7e\n",s)