x = [0.01 0.38 0.71 0.92 0.99]';
y = [cos(x)];
ponto = 0.1;

q = zeros(2,3);

for i=1:3
  div = (x(i+1)-x(i));
  q(1,i) = -y(i)/div + y(i+1)/div;
  q(2,i) = (y(i)*x(i+1))/div + (y(i+1)*(-x(i)))/div;
endfor

for i=1:3
  if(x(i) <= ponto && ponto < x(i+1))
    p = [q(1,i) q(2,i)]'
    res = polyval(p,ponto);
  endif
endfor

printf("%1.7e\n",res)