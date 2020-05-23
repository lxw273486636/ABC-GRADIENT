  function [ObjVal sensitivity]=sumsquares1(Colony1,xd)
Cim=size(Colony1,1);
Dim=size(Colony1,2);
ObjVal=0;

	for ii=1:Dim
	ObjVal=ObjVal+Colony1(xd,ii)^2*ii;
	end

sensitivity=zeros(1,Dim);
	for ii=1:Dim
	sensitivity(ii)=2*Colony1(xd,ii)*ii;
	end

