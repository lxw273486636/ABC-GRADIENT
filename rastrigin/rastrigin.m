  function [ObjVal sensitivity]=rastrigin(Colony1,xd)
Dim=size(Colony1,2);
%sensitivity=zeros(size(Colony1,1),Dim);
[Nind,Nvar] = size(Colony1);
A = 10;
      Omega = 2 * pi;
      ObjVal = Dim * A + sum(((Colony1 .* Colony1) - A * cos(Omega * Colony1))')';
sensitivity= 2*Colony1+A*Omega*sin(Omega*Colony1);



