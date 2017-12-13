n = 11; 
h = 1/(n-1);
x = 0:h:1;

A = zeros(n,n);
b = zeros(n,1);

A(1,1) = 1;
b(1) = 1;

for i=2:n-1
    A(i,i-1) = -1;
    A(i,i) = 2;
    A(i,i+1) = -1;
    
    b(i) = h^2;
end

A(n,n) = 1;
b(n) = 0;

A(11,9)