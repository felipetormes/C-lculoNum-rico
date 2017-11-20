disp('Exercicio 3')

function y=F(x)
  y = zeros(2,1);
  y(1) = x(1)^2 - sin(x(2)) + x(1)*x(2) - 5.3;
  y(2) = -x(2)*x(1) + 3;
endfunction

function y=Jf(x)
  y = zeros(2,2);
  y(1,1) = 2*x(1) + x(2);
  y(1,2) = -cos(x(2)) + x(1);
  y(2,1) = -x(2);
  y(2,2) = -x(1);
endfunction

x = [-1 3]';

n = 3;

for i=1:n
  delta = -Jf(x)\F(x);
  x = delta + x;
endfor

res = x(2);

printf("%1.8e\n",res)