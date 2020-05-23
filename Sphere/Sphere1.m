  function [ObjVal sensitivity]=sphere1(Colony1,xd)
%sensitivity=[0 0 0 0 0];
Dim=size(Colony1,2);
[Nind,Nvar] = size(Colony1);
Colony11=Colony1(xd,:);
S=Colony11.*Colony11;
ObjVal=sum(S');
sensitivity= 2*Colony11;


