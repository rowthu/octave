function z=mvavg(y,b)
  for k=1:b
    z(k)=mean(y(1:2*k-1));
   endfor;
  for k=b+1:length(y)-b
    z(k)=mean(y(k-b:k+b));
  endfor
  for k=length(y)-b+1:length(y)
    z(k)=mean(y(2*k-length(y):end));
  endfor
  z=z(:);
endfunction
