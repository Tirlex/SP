function[]=TEMA1_PUNCTUL2_Tirlea_Razvan_421C(t,nr)
width = 0.5;
%sawtooth(t,width) genereaza un semnal triunghiular iar width determina
%unde se afla maximul
%Inmultest t cu 1/6 pentru ca panta sa devina +1 V/s
s=(1+width)*sawtooth(t*2*1/6*pi, width) - width;
figure(nr)
plot(t,s,'-r.'),title('Semnal triunghiular'),xlabel('Timp [s]'),ylabel('A [V]'),grid
end