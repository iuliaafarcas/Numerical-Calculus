%Check the following operations with vectors:


d= [4 5 6]
a=[1 2 13; 4 5 6; 7 8 9]
b=[4 8 12; -1 0 5; 2 3 8]
[m, n]=size(a)
t=b' %the transpose matrix ofb
c=a*b
d=a.*b
e=a.^2
size(a) % linii si col
length(a) % max dintre nr de linii si coloane
m=mean(a) % pt coloane
m1=mean(a,2)%pt linii

max(a) % max of each col
% max of lines -> transpusa matricii
x=a\b %-> solve the system ax=b
triu(a) %-> upper deasupra diagonslei princvipale pune 0
tril(a)%-> lower
m= [2 3 5; 7 11 13; 17 19 23]
m(:,1) %-> all elems from col 1
m(1,:) % -> all elem from row 1

% polynomials
%1
p=[2 -5 0 8]
polyval(p,2)
%2
p1=[1 -5 -17 21]
roots(p1)
 
 
%GRAPHS
%1
x=0:0.01:1;
f= exp(10*x.*(x-1)).*sin(12*pi*x);
%plot(x,f);

%2
t=0:0.01:10*pi;
a=2;
b=3;
x2=(a+b)*cos(t)-b*cos((a/b+1)*t);
y2=(a+b)*sin(t)-b*sin((a/b+1)*t);
%plot(x2,y2);

%3
x3=0:0.01:2*pi;
f31=cos(x3);
f32=sin(x3);
f33=cos(2*x3);
plot(x3, f31, x3, f32, x3, f33)


%4
x41=-1:0.01:0
x42=0:0.01:1

f41=x41.^3+sqrt(1-x41);
f42=x42.^3-sqrt(1-x42);
plot(x41, f41, x42, f42);

%5
x51=0:2:50;
x52=1:2:50;
f51=x51./2;
f52=3.*x52+1;

plot(x51, f51, '*', x52, f52, '*');

%7
[x7,y7]= meshgrid(-2:0.01:2, -4:0.01:4);
g=exp(-((x7-1/2).^2+(y7-1/2).^2));
mesh(x7,y7,g);

%6
ex6(6);

function f6= ex6(x6)
  if(x6 == 0)
    f6 = 1;
   else f6= 1+1/ex6(x6 - 1);
  end
end
  
  
  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 