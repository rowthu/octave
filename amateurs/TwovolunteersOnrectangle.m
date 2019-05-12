%%% Two volunteer selection problem on a Rectangle
clear all;
L=1;
B=3;
X=linspace(-L,L,1000);
Y=linspace(-B,B,1000);
[iX, iY]=meshgrid(X,Y);
dA=(X(2)-X(1))*(Y(2)-Y(1));

for ini=1:40
%%initialization
P=[L*rand*sign(rand-0.5), B*rand*sign(rand-0.5)];
Q=[L*rand*sign(rand-0.5), B*rand*sign(rand-0.5)];
   %plot( P(1), P(2), 'r*');
   grid on;
   hold on;
   %plot( Q(1), Q(2), 'r*');

 for it=1:40
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
   %plot( P(1), P(2), 'b*');
   %plot( Q(1), Q(2), 'g*');
   %title(ini)
   %pause(0.01)
   manifold(2*ini-1:2*ini,:)=[P ; Q];
 endfor
 plot(manifold(:,1), manifold(:,2), '*');
 %hist(sqrt(manifold(:, 1).^2+manifold(:, 2).^2), 25);
 