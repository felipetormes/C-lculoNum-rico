x = [-0.2 -0.16 -0.12 -0.08 -0.04];
y = [0.962 0.973 0.987 0.993 0.998];

n = 2;
a = -0.2;
b = -0.04;
h = (b-a)/n;
z = a:h:b;
pMed = 0;

for i=2:2:4
  pMed += h * (y(i));
endfor

printf("%1.4e\n",pMed)