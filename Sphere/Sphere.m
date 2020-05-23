
  function [ObjVal sensitivity]=sphere(Colony1,xd)
Dim=size(Colony1,2);
%sensitivity=zeros(size(Colony1,1),Dim);
[Nind,Nvar] = size(Colony1);
S=Colony1.*Colony1;
ObjVal=sum(S');
sensitivity= 2*Colony1;
