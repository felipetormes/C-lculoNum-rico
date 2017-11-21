A = [10 -7 2;2 -5 -1;-2 1 4];
b = [1 -1 2]';
x = [1 1 1]';

D = eye(size(A)).*A;
L = tril(A,-1);
U = triu(A,1);

Tj = -inv(D)*(L+U);

n = 50;

for i=1:n
  lambda = x'*Tj*x;
  x = Tj*x/norm(Tj*x);
endfor

printf("%1.7f\n", abs(lambda));