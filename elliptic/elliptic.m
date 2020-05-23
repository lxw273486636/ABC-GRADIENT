  
  function [ObjVal sensitivity]=elliptic(Colony1,xd)
Cim=size(Colony1,1);
Dim=size(Colony1,2);
ObjVal=zeros(Cim,1);
for jj=1:Cim
	for ii=1:Dim
	ObjVal(jj)=ObjVal(jj)+Colony1(jj,ii)^2*1e6^((ii-1)/(Dim-1));
	end
end
sensitivity= zeros(Cim,Dim);
for jj=1:Cim
	for ii=1:Dim
	sensitivity(jj,ii)=2*Colony1(jj,ii)*1e6^((ii-1)/(Dim-1));
	end
end

	






