f = @(x) (sin(x.^2 - 1) + 2*cos(x)) / (sin(x).^4 + cos(x).^4);

n = 7;
a = -2;
b = -1;
h = (b-a)/n;
z = a:h:b;
trap = 0;

for i=1:n
  trap += (h/2) * (f(z(i)) + f(z(i+1)));
endfor

printf("%1.7e\n",trap)