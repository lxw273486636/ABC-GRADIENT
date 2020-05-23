  function [ObjVal sensitivity]=himmelblau1(Colony1,xd)
Dim=size(Colony1,2);
[Nind,Nvar] = size(Colony1);
Colony11=Colony1(xd,:);
S=Colony11.^4-16*Colony11.^2+5*Colony11;
ObjVal=sum(S')/Dim;
sensitivity= (4*Colony11.^3-32*Colony11+5)/Dim;

