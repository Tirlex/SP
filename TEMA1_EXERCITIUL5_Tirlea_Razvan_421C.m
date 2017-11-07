function[T] = TEMA1_EXERCITIUL5_Tirlea_Razvan_421C(t,s,checkIfCos)
%E5
% Verific daca se construieste un semnal cosinusoidal
if checkIfCos == 0
%a)Reprezint semnalul intr-o retea
    plot(t,s,'.-'),xlabel('Timp [s]'),grid
    
%b) Diferenta dintre valorile varfurilor graficului este perioada
    [idx,idx] = findpeaks(s);
    T = t(idx(2))-t(idx(1));
else
    
% c)
    F1 = 50;
    s1 = 2*sin(2*pi*F1*t);
    plot(t,s,t,s1),xlabel('Timp [s]'),color('red'),grid
end
