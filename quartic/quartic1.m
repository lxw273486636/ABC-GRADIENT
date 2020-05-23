  function [ObjVal sensitivity]=quartic1(Colony1,xd)
Cim=size(Colony1,1);
Dim=size(Colony1,2);
ObjVal=0;

	for ii=1:Dim
	ObjVal=ObjVal+Colony1(xd,ii)^4*ii;
	end

sensitivity=zeros(1,Dim);
	for ii=1:Dim
	sensitivity(ii)=4*Colony1(xd,ii)^3*ii;
	end

