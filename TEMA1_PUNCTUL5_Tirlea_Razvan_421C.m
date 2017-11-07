function[]=TEMA1_PUNCTUL5_Tirlea_Razvan_421C(t,nr)
A=1.5;
T=4;
figure(nr)
%Impart argumentul sinusului la perioada semnalului neredresat pentru a
%obtine graficul.
s=A*abs(sin(2*pi*t*1/T));
plot(t, s, '-r.' ),title('Semnal sinusoidal redresat dubla alternanta'),xlabel('Timp [s]'),ylabel('A [V]')
end