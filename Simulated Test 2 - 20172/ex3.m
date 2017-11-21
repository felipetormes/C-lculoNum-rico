disp('Exercicio 3')

function y=F(x)
  y = zeros(3,1);
  y(1) = cos(x(1)*x(2)) + x(3);
  y(2) = x(3)^2 - x(1)*x(2);
  y(3) = x(2)*sin(x(1)) - x(3)^2;
endfunction

function y=Jf(x)
  y = zeros(3,3);
  y(1,1) = -sin(x(1)*x(2))*x(2);
  y(1,2) = -sin(x(1)*x(2))*x(1);
  y(1,3) = 1;
  y(2,1) = -x(2);
  y(2,2) = -x(1);
  y(2,3) = 2*x(3);
  y(3,1) = cos(x(1))*x(2);
  y(3,2) = sin(x(1));
  y(3,3) = -2*x(3);
endfunction

x = [1 1 1]';

n = 3;

for i=1:n
  delta = -Jf(x)\F(x);
  x = delta + x;
endfor

res = norm(F(x),2);

printf("%1.8e\n",res);

#letra C