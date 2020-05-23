
function [Colony Obj Fit Objs oBas]=GreedySelection(Colony1,Colony2,ObjEmp,ObjEmp2,FitEmp,FitEmp2,Objsen,Objsen2,fbas,ABCOpts,i)

oBas=fbas;
Obj=ObjEmp;
Fit=FitEmp;
Colony=Colony1;
Objs=Objsen;
if (nargin==10) %Inside the body of a user-defined function, NARGIN returns the number of input arguments that were used to call the function. 
for ind=1:size(Colony1,1)
    if (FitEmp2(ind)>FitEmp(ind))
        oBas(ind)=0;
        Fit(ind)=FitEmp2(ind);
        Obj(ind)=ObjEmp2(ind);
        Colony(ind,:)=Colony2(ind,:);
	Objs(ind,:)=Objsen(ind,:);
    else
        oBas(ind)=fbas(ind)+1;
        Fit(ind)=FitEmp(ind);
        Obj(ind)=ObjEmp(ind);
        Colony(ind,:)=Colony1(ind,:);
	Objs(ind,:)=Objsen(ind,:);
    end;
end; %for
end; %if
if(nargin==11)
    ind=i;
    if (FitEmp2(ind)>FitEmp(ind))
        oBas(ind)=0;
        Fit(ind)=FitEmp2(ind);
        Obj(ind)=ObjEmp2(ind);
        Colony(ind,:)=Colony2(ind,:);
	Objs(ind,:)=Objsen(ind,:);
    else
        oBas(ind)=fbas(ind)+1;
        Fit(ind)=FitEmp(ind);
        Obj(ind)=ObjEmp(ind);
        Colony(ind,:)=Colony1(ind,:);
	Objs(ind,:)=Objsen(ind,:);
    end;
end; 
    
