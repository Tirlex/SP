function[]=TEMA1_PUNCTUL4_Tirlea_Razvan_421C(t,nr)
A=0.8;
T=3;
figure(nr)
%Argumentul sinusului se imparte la perioada pentru a obtine figura dorita
s=A*sin(2*pi*t*1/T);
%Monoredresare
s(s<0) = 0;
plot(t, s, '-r.'),title('Semnal sinusoidal redresat mono alternanta'),xlabel('Timp [s]'),ylabel('A [V]')
end