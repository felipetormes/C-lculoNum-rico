disp('huehuehuhe');

function y=F(x)
  y = zeros(2,1);
  y(1) = cos(x(1)*x(2)) - 2*x(2) + 2.4;
  y(2) = x(1)^2 - x(1)*x(2) + 1;
endfunction

function y=Jf(x)
  y = zeros(2,2);
  y(1,1) = -sin(x(1)*x(2))*x(2);
  y(1,2) = -sin(x(1)*x(2))*x(1) - 2;
  y(2,1) = 2*x(1) - x(2);
  y(2,2) = -x(1);
endfunction

x = [1 1]';

n = 3;

for i=1:n
  delta = -Jf(x)\F(x);
  x = x + delta;
endfor

res = norm(x,2);

printf("%1.8e\n",res);