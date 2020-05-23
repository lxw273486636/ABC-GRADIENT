  function [ObjVal sensitivity]=elliptic1(Colony1,xd)
Cim=size(Colony1,1);
Dim=size(Colony1,2);
ObjVal=0;

	for ii=1:Dim
	ObjVal=ObjVal+Colony1(xd,ii)^2*1e6^((ii-1)/(Dim-1));
	end

sensitivity=zeros(1,Dim);
	for ii=1:Dim
	sensitivity(ii)=2*Colony1(xd,ii)*1e6^((ii-1)/(Dim-1));
	end

