%% Counting all the 4 digit 9-sum numbers

t=0;
for k=1:99999
  if recsum(k)==9
    t++ ;
  endif
  
endfor
disp(t)