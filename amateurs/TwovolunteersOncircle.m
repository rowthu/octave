%%% Two volunteer selection problem on a Circle

T=linspace(0,2*pi,1000);
R=linspace(0,1,1000);
[GridR, GridT]=meshgrid(R, T);
iX=GridR.*cos(GridT);
iY=GridR.*sin(GridT);
dA=GridR*(R(2)-R(1))*(T(2)-T(1));
rho=1;

for ini=1:1
%%initialization
P=[rho*rand*cos(rand*2*pi), rho*rand*sin(rand*2*pi)];
Q=[rho*rand*cos(rand*2*pi), rho*rand*sin(rand*2*pi)];

 for it=1:90
   dD=sum(P.*P-Q.*Q ) ;
   sgn=sign(2*(Q(1)-P(1))*iX+2*(Q(2)-P(2))*iY+dD);
   %% x0, y0
   isgn=1-sgn;
   Nume=sum((iX.*isgn.*dA)(:));
   Deno=sum((isgn.*dA)(:));
   P(1)=Nume/Deno;
   Nume=sum((iY.*isgn.*dA)(:));
   Deno=sum((isgn.*dA)(:));
   P(2)=Nume/Deno;
   
   %% x1, y1
   isgn=1+sgn;
   Nume=sum((iX.*isgn.*dA)(:));
   Deno=sum((isgn.*dA)(:));
   Q(1)=Nume/Deno;
   Nume=sum((iY.*isgn.*dA)(:));
   Deno=sum((isgn.*dA)(:));
   Q(2)=Nume/Deno;
   
  endfor
   polar( atan2(P(2), P(1)), norm(P),'r*');
   hold on;
   polar( atan2(Q(2), Q(1)), norm(Q), 'b*');
   pause(1)
   norm(P)
   endfor
