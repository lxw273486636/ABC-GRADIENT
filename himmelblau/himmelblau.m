  
  function [ObjVal sensitivity]=himmelblau(Colony1,xd)
Dim=size(Colony1,2);
%sensitivity=zeros(size(Colony1,1),Dim);
[Nind,Nvar] = size(Colony1);
S=Colony1.^4-16*Colony1.^2+5*Colony1;
ObjVal=sum(S')/Dim;
sensitivity= (4*Colony1.^3-32*Colony1+5)/Dim;

	






