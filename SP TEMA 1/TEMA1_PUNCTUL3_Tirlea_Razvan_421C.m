function[]=TEMA1_PUNCTUL3_Tirlea_Razvan_421C(t,nr)
niv = [ -1 1 ];
%Functia loop calculeaza numarul figurii si avem nevoie de ultimul nr.
TEMA1_PUNCTUL3BUCLA_Tirlea_Razvan_421C(t,nr,niv,1);
niv = [ -3 -1 1 3];
TEMA1_PUNCTUL3BUCLA_Tirlea_Razvan_421C(t,nr,niv,2);
niv = [ -5 -3 -1 1 3 5];
TEMA1_PUNCTUL3BUCLA_Tirlea_Razvan_421C(t,nr,niv,3);
niv = [ -7 -5 -3 -1 1 3 5 7];
TEMA1_PUNCTUL3BUCLA_Tirlea_Razvan_421C(t,nr,niv,4);
end
