function X=brownian(Dist,N)
if nargin==0
  N=1000;
  endif;

X(1)=10*rand;
sigma=0.5;

for t=1:N-1
  switch Dist
    case "Normal"
      X(t+1)=X(t)+randn; 
    case "Uniform"
      X(t+1)=X(t)+sigma*(2*rand-1);  
    case "Binary"
      X(t+1)=X(t)+sigma*sign(2*rand-1);
    endswitch ;
endfor;
X=X(:);
endfunction;