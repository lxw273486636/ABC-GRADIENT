  function [ObjVal sensitivity]=rastrigin1(Colony1,xd)
%sensitivity=[0 0 0 0 0];
Dim=size(Colony1,2);
[Nind,Nvar] = size(Colony1);
Colony11=Colony1(xd,:);
A = 10;
      Omega = 2 * pi;
      ObjVal = Dim * A + sum(((Colony11 .* Colony11) - A * cos(Omega * Colony11))')';
sensitivity= 2*Colony11+A*Omega*sin(Omega*Colony11);


