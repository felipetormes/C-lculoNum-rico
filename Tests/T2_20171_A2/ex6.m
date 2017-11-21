x = [0.01 0.38 0.71 0.92 0.99]';
y = [cos(x)];

fx1 = y(1); #f[x1]
fx2 = y(2); #f[x2]
fx1x2 = (f2 - f1)/(x(2)-x(1)); #f[x1,x2]
a1 = fx1;
a2 = fx1x2;

res = a1*a2;

printf("%1.8e\n",res);