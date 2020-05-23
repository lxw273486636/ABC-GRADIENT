  function [ObjVal sensitivity]=rosenbrock1(Chrom1,switch1)
Chrom=Chrom1(switch1,:);
    Dim=size(Chrom,2);
   
% Compute population parameters
   [Nind,Nvar] = size(Chrom);

      Mat1 = Chrom(:,1:Nvar-1); %1 to 9
      Mat2 = Chrom(:,2:Nvar);   % 2 to 10
       Mat3= [Mat1(:,end) Mat1(:,1:end-1)] ;   
      if Dim == 2
         ObjVal = 100*(Mat2-Mat1.^2).^2+(1-Mat1).^2;
      else
         ObjVal = sum((100*(Mat2-Mat1.^2).^2+(1-Mat1).^2)')';
      end   
      
	 sensitivity=200*(Mat2-Mat1.^2).*(-2*Mat1)+2*(Mat1-1)+200*(Mat1-Mat3.^2);
     sensitivity(:,1)=-400*(Mat2(:,1)-Mat1(:,1).^2).*Mat1(:,1)+2*(Mat1(:,1)-1);
	 sensitivity(:,Nvar)=200*(Mat2(:,Nvar-1)-Mat1(:,Nvar-1).^2);

