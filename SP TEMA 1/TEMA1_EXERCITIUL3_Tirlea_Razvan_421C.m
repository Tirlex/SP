function[ma,vsquare,m] = TEMA1_EXERCITIUL3_Tirlea_Razvan_421C(v)
%E3
%media aritmetica a partilor reale
ma = mean(real(v));
%vectorul vsquare returneaza elementele din vectorul v la patrat
vsquare = v.^2;
% vectorul vtrans este vectorul v transpus
vtrans = v.';
m = v * vtrans;
end