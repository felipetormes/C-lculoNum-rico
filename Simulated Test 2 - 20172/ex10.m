disp('Exercicio 10')

function y=F(x)
  y = zeros(11,1);
  y(1) = x(1) - 5;
  for i=2:10
    y(i) = x(i-1) - 3*x(i)^2 - x(i+1);
  endfor
  y(11) = -x(11) - 6;
endfunction

function y=Jf(x)
  y = zeros(11,11);
  y(1,1) = 1;
  for i=2:10
    y(i,i-1) = 1;
    y(i,i) = -6*x(i);
    y(i,i+1) = -1;
  endfor
  y(11,11) = -1;
endfunction

u = ones(11,1);

res = norm(Jf(u),2);

printf("%1.8e\n",res);

#letra C