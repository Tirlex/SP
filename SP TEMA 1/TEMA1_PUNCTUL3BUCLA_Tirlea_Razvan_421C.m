function[]=TEMA1_PUNCTUL3BUCLA_Tirlea_Razvan_421C(t,nr,niv,k)
figure((nr-1)*4+k)
hold on
title('Semnal dreptunghiular multinivel aleator'),xlabel('Timp [s]'),ylabel('A [V]')
for n=0:0.25:40
%Datasample ofera informatii despre niv
y = datasample(niv, 1);
%Rectpuls genereaza un impuls de durata 1/4
plot(t, y*rectpuls(t-n, 0.25))
end
end