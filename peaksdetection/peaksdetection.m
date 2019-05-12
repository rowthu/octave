%%Peaks detection
pkg load image;
I=imread('Picture1.png');
imshow(I);
[x, y, buttons]=ginput();
 if isempty(y) 
   value=ceil(size(I,1)/2);
   else
   value=ceil(y(1));
   endif;
f=I(:,value );
G=fspecial('gaussian',[9, 1],0.9);
Gf=conv(f,G,'same');
IBf=f-baseline(f,20)';
plot(Gf,'g');
hold on;
plot(IBf,'b');
