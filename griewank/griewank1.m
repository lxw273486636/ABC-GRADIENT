  function [ObjVal sensitivity]=griewank1(Chrom1,switch1)

Chrom=Chrom1(switch1,:);
[Nind, Nvar] = size(Chrom);
   nummer = repmat(1:Nvar, [Nind 1]);
   ObjVal = sum(((Chrom.^2) / 4000)')' - prod(cos(Chrom ./ sqrt(nummer))')' + 1; 
   sensitivity=Chrom./2000+ prod(cos(Chrom ./ sqrt(nummer))')'*tan(Chrom ./ sqrt(nummer))/sqrt(nummer);



