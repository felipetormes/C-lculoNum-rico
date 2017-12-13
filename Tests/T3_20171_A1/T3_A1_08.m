format long

f = @(y,t) ((4*t)/y) - (t*y);

function y=euler(f,y0,t0,h,N)  
  y = zeros(N+1,1);
  t = zeros(N+1,1);
    
  y(1) = y0;
  t(1) = t0;  
  for n=1:N
    t(n+1) = t(n) + h;
    y(n+1) = y(n) + h*f(y(n),t(n));  
   end  
endfunction

yeuler = euler(f,1.4,0,0.1,2)

function y = ab3(f, y0, t0, y1, t1, y2, t2, h, N) #Adam-Bashforth de 3º Ordem
    y = zeros(N+1, 1);
    t = zeros(N+1, 1);
    
    y(1) = y0;
    t(1) = t0;
    y(2) = y1;
    t(2) = t1;
    y(3) = y2;
    t(3) = t2;
    
    for n = 3:N #começa em 3 para calcular o quarto passo
        t(n+1) = t(n) + h;
        y(n+1) = y(n) + h*(23*f(y(n),t(n))-16*f(y(n-1),t(n-1))+5*f(y(n-2),t(n-2)))/12;
    end
endfunction

yab3 = ab3(f, yeuler(1), t(1), yeuler(2), t(2), yeuler(3), t(3), 0.1, 10); #já tenho as duas soluções y e t gravado em "yrk4" e "t", devo manter o mesmo passo pra manter a ordem! Calculado até o tempo 3
yab3(11)