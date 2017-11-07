%E6
N = 0.5 * 12;
% Creez un vector cu valori aleatoare binare
n = randi([0 1],1,N);

%a)Reprezint semnalul in timp absolut
subplot(2,1,1),plot(n),title('plot(n)'),xlabel('Timp [ms]'),grid

%b) Reprezint semnalul discret in functie de n
subplot(2,1,2),stem(n),title('stem(n)'),xlabel('Timp [ms]'),grid