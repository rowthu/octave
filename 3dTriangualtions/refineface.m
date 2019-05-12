function [V,newF]=refineface(V,F)
  newV=[];
  newF=[];
  nV=size(V,1);
  nF=size(F,1);
  for f=1:size(F,1)
    midpoint=(V(F(f,1),:)+V(F(f,2),:)+V(F(f,3),:))/3
    midpoint=midpoint/norm(midpoint);
    newV=[newV;midpoint];
    newF=[newF; ...
          F(f,1) F(f,2) nV+f ;...
          F(f,2) F(f,3) nV+f ;...
          F(f,3) F(f,1) nV+f ] ;
    endfor  
    V=[V; newV];
endfunction
