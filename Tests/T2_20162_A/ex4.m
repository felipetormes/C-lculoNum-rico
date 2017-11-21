disp('Exercicio 4');

function y=F(x)
  y = zeros(2,1);
  y(1) = sin(x(1) + x(2)) + cos(x(2));
  y(2) = x(1)^2 + 2*x(2)^2 - 10;
endfunction

function y=Jf(x)
  y = zeros(2,2);
  y(1,1) = cos(x(1) + x(2));
  y(1,2) = cos(x(1) + x(2)) - sin(x(2));
  y(2,1) = 2*x(1);
  y(2,2) = 4*x(2);
endfunction

x = [3 9]';

n = 4;

for i=1:n
  delta = -Jf(x)\F(x);
  x = x + delta;
endfor

printf("%1.7f\n", x(1));