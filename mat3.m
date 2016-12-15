
figure(1);
plot(t_4perioade,x_4perioade);
title('x(t) cu linie solida si reconstructia folosind N=50 coeficienti(linie punctata)');
hold on
x_reconstr_4perioade = repmat(x_reconstr,1,4); 
plot(t_4perioade,x_reconstr_4perioade,'--');
xlabel('Timp [s]');
ylabel('Amplitudine');

f = -N*F:F:N*F; % generarea vectorului de frecvente
figure(2);
stem(f,abs(X)); % afisarea lui X
title('Spectrul lui x(t)');
xlabel('Frecventa [Hz]');
ylabel('|X|');

%%
% Teoria seriilor Fourier ne spune ca orice semnal periodic poate fi aproximat printr-o suma infinita 
% de sinusi si cosinusi de diferite frecvente fiecare ponderat cu un anumit coeficient. Acesti coeficienti
% reprezinta practic spectrul.
% Semnalul reconstruit folosind un numar finit de termeni se apropie ca
% forma de semnalul original cu o anumita marja de eroare. Cu cat micsoram
% numarul de coeficienti, aceasta marja de eroare va fi din ce in ce mai
% mare. In plus se observa faptul ca semnalul poate fi aproximat printr-o
% suma de sinusoide, variatiile semnalului au un caracter de sinusoida.