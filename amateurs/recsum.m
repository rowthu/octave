function out=recsum(k)
    out=mod(k,10)+mod(floor(k/10),10)+mod(floor(k/100),10)+floor(k/1000);
   if out >9
     out=recsum(out);  
   endif
endfunction
