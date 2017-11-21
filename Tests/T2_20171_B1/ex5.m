x = [0.262 0.785 1.309 2.879]';
y = [-0.918 0.224 1.307 1.814]';

num = poly([x(1) x(2) x(4)]);
L3 = num/polyval(num,x(3));

res = polyval(L3,0.5);

printf("%1.8e\n",res)