function d=normA(V,A)
  %&The vectors are assumed to be in the rows of V
  %% according to triangulization programs.
  %% A is the metric inducing positive definite(not necessarily) transformation 
  U=(A*V')';
  d=sqrt(abs(sum(V.*U, 2)))+0.001; % to avouid zero norm 
endfunction
