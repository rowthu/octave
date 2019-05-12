clear all;
hold off;
N=100000;
b=100;
Dist="Binary";
y=load("../../../Downloads/goog.csv");
%y=brownian(Dist, N);
%ma=mvavg(y,b);
%plot(y);
%hold on;
%plot(ma,'r');
%hold off;
%figure(2)
%[hC, binC]=hist(y-ma,50);
[hC, binC]=hist(diff(y),50);
plot(binC, hC)