P = 40;
D = 23;
N = 50;
dutyCicle = 42.5;
w0 = 2 * pi / P;

%pasul de esantionare
pas = P / 100;  
t = -2 * P : pas : 2 * P;

%Vector de coeficienti SFC
coeficienti = zeros(1,N);
%Vector de coeficienti SFA
A = zeros(1,N); 

%Semnalul initial 
Semnal_Dreptunghiular = square( w0 * t, dutyCicle); 
%Semnal descompus in SFC
Semnal_Initial = @(t,k) square( w0 * t, dutyCicle).*exp( -1j * k * w0 * t); 
Semnal_Reconstruit = 0;
componenta_continua = (1 / P) * integral(@(t) Semnal_Initial(t,0),0,P);

%Se calculeaza coeficientii SFC si se reconstruieste semnalul prin
%insumarea termenilor
for k = 1:1:50
    coeficienti(k) = (1 / P) * integral(@(t) Semnal_Initial(t,k - 25 ),0,P);
    Semnal_Reconstruit = Semnal_Reconstruit + coeficienti(k) * exp( 1j * (k - 25) * w0 * t);
end

A(1) = abs(componenta_continua);

%Se calculeaza coeficientii SFA(reprezinta amplitudinile din spectru)
for k = 1:N
      A(k+1) = 2 * abs(coeficienti(k)); 
end

figure(1);
plot(t, Semnal_Reconstruit, t, Semnal_Dreptunghiular);
figure(2);
%Se reprezinta A in functie de numarul coeficientului * frecventa fundamentala
stem([0:N] * w0, A), title('Spectrul semnalului Dreptunghiular');
