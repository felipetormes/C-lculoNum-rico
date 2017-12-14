f = @(y,t) (sin(2*t) - 2*t*y) / (t.^2);

ti = 1.1;
h = 0.02;
n = 46;

t = zeros(n,1);
y = zeros(n,1);

#Condicao Inicial
t(1) = ti;
y(1) = 2;

for i=1:n-1
  t(i+1) = t(i) + h;
  y(i+1) = y(i) + h*f(y(i),t(i));
endfor

printf("%1.7e\n",y(n));