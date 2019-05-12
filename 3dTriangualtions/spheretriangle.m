# Created by Octave 4.4.1, Sun Jan 20 09:18:41 2019 GMT <unknown@DESKTOP-2A3V6CS>

V=[1 0 0; ...
   0 1 0; ...
   0 0 1;
   0 0 0;
   1 1 1];
 center=sum(V)/size(V,1);
 V=V-repmat(center, size(V,1), 1);
 normV=norm(V,2,'rows');
 V=V./repmat(normV, 1, 3);
 %plot3(V(:,1), V(:,2), V(:,3),'*r')
% rotate3d
F=[1 2 5; 2 3 5; 1 3 5; 2 4 3; 4 1 3; 1 2 4];
%%start refinement
finalV=V; finalF=F;
for it=1:3
  [finalV,finalF]=refinedge(finalV, finalF);
endfor
[redfaces, redverts]=reducepatch(finalF, finalV);
size(finalV)
size(redverts)
patch('vertices', finalV, 'faces', finalF, 'facevertexcdata', hsv(size(finalF,1)),'facecolor', 'interp', 'edgecolor', [1 1 1 ]);
rotate3d
