f = @(x) (sin(x.^2-1) + cos(x)) / (sin(x).^4 + cos(x).^4);

a = -2;
b = 0;
n = 2;
h = (b-a)/n;
xint = a:h:b;
In = 0;

for i=1:n
    F = @(u) (xint(i+1)-xint(i))/2*f((xint(i+1)-xint(i))/2*(u+1)+xint(i));
    In += F(sqrt(3)/3) + F(-sqrt(3)/3);
endfor

printf("%1.7e\n",In);