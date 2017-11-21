x = [0.01 0.38 0.71 0.92 0.99]';
y = [sin(x)];

num = poly([x(2) x(3) x(4) x(5)]);
L1 = num/polyval(num,x(1));

num = poly([x(1) x(3) x(4) x(5)]);
L2 = num/polyval(num,x(2));

num = poly([x(1) x(2) x(4) x(5)]);
L3 = num/polyval(num,x(3));

num = poly([x(1) x(2) x(3) x(5)]);
L4 = num/polyval(num,x(4));

res = polyval(L1,x(1))/(sin(polyval(L2,x(2)) + polyval(L3,x(3)) + polyval(L4,x(4))))

printf("%1.7e\n",res);

#letra D