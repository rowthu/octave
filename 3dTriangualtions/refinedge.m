function [V,newF]=refinedge(V,F)
  newV=[];
  newF=[];
  nV=size(V,1);
  nF=size(F,1);
  for f=1:nF
    midpoint12=(V(F(f,1),:)+V(F(f,2),:))/2;
    midpoint12=midpoint12/norm(midpoint12);
    midpoint23=(V(F(f,2),:)+V(F(f,3),:))/2;
    midpoint23=midpoint23/norm(midpoint23);
    midpoint31=(V(F(f,1),:)+V(F(f,3),:))/2;
    midpoint31=midpoint31/norm(midpoint31);
    newV=[newV; midpoint12; midpoint23; midpoint31];
    newF=[newF; ...
          F(f,1) nV+3*(f-1)+1 nV+3*(f-1)+3 ;...
          F(f,2) nV+3*(f-1)+1 nV+3*(f-1)+2 ;...
          F(f,3) nV+3*(f-1)+2 nV+3*(f-1)+3 ;...
          nV+3*(f-1)+1 nV+3*(f-1)+2 nV+3*(f-1)+3 ];
    endfor  
    V=[V; newV];
endfunction
