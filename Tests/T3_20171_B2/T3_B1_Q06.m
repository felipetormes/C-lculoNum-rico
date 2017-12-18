f = @(x) (sin(x.^2 - 1) + 2*cos(x)) / (sin(x).^4 + cos(x).^4);

n = 2;
a = -2;
b = 0;
h = (b-a)/n;
z = a:h:b;
gauLeg = 0;

for i=1:n
  F = @(u) (z(i+1)-z(i)) / 2*f((z(i+1)-z(i)) / 2*(u+1) + z(i));
  gauLeg += F(sqrt(3)/3) + F(-sqrt(3)/3);
endfor

printf("%1.7e\n",gauLeg)