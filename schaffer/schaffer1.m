  function [ObjVal sensitivity]= Schaffer1(Chrom1,switch1)
Chrom=Chrom1(switch1,:);
% Dimension of objective function
  
    Dim=size(Chrom,2);
   
% Compute population parameters
   [Nind,Nvar] = size(Chrom);


      % function 7, sum of -xi*sin(sqrt(abs(xi))) for i = 1:Dim (Dim=10)
      % n = Dim, -500 <= xi <= 500
      % global minimum at (xi)=(420.9687) ; fmin=?
sum1=sum((Chrom.^2)')';
ObjVal = 0.5+((sin(sqrt(sum1)).^2)-0.5)./(1+0.001*sum1).^2;
   % otherwise error, wrong format of Chrom
sensitivity=diag((2*(sin(sum1).*cos(sum1))./sqrt(sum1).*(1+0.001*sum1).^2-0.004*(sin(sum1).^2-0.5).*(1+0.001*sum1))./(1+0.001*sum1).^4)*Chrom;


