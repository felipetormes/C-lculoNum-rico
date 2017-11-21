disp('Exercicio 10');

function y = J(x)
  y = zeros(11,11);
  y(1,1) = 2;
  for i=2:10
    y(i,i-1) = 1;
    y(i,i) = -6*x(i);
  endfor
  y(11,11) = -1;
endfunction

u = ones(11,1);

res = norm(J(u),2);

printf("%1.7e\n",res);