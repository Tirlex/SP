function[]=TEMA1_PUNCTUL1_Tirlea_Razvan_421C(t,nr)
% factorul de umplere
n = 1/4;
% Inmultesc cu (1-n) si scad n deoarce nivelele min si max nu sunt la
% distante egale.
s=(1-n)*square(t*2*pi, n*100) - n;
figure(nr)
plot(t,s,'-r.'),title('Semnal dreptunghiular periodic'),xlabel('Timp [s]'),ylabel('A [V]'),grid
end