
f=@(x) 5-2*x-x^3 ;
df=@(x) -2-3*x^2 ;
x=1
for it=1:4
  x=x-f(x)/df(x) 
endfor
