﻿x = [-0.2 -0.1 0 0.1 0.2];
y = [1.38 1.2 1 0.8 0.58];

h = 0.2;
s = 0;

for i=1:2:3
    s += h/6*(y(i) + 4*y(i+1) + y(i+2));
endfor

printf("%1.4e\n",s);