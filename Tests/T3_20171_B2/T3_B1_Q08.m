format long

f = @(y,t) (sin(3*t) - (2*t*y)) / (t.^2);

h = 0.02;
n = 45;
y = zeros(n+1,1); 
t = zeros(n+1,1);
y_til = zeros(n+1,1);
y(1) = 2;
t(1) = 1.1;

for i=1:3
  t(i+1) = t(i) + h; 
  y_til(i+1) = y(i) + h*f(y(i),t(i)); 
  y(i+1) = y(i) + (h/2) * (f(y(i),t(i)) + f(y_til(i+1),t(i+1)));
endfor

for i = 4:n
  t(i+1) = t(i) + h;
  y(i+1) = y(i) + h*(55*f(y(i),t(i))-59*f(y(i-1),t(i-1))+37*f(y(i-2),t(i-2))-9*f(y(i-3),t(i-3)))/24;
endfor

y(n+1)