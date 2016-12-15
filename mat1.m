N = 50;
D = 15;
P = 40;
F=1/P;
w0=2*pi/P; 
t=0:0.02:P-0.02;

x = zeros(1,size(t,2)); 
x(t<=D/2) =1; 
x(t>P-D/2) =1;
t_4perioade = 0:0.02:4*P-0.02;
x_4perioade = repmat(x,1,4);
 
for k = -N:N
    x_temp = x;
    x_temp = x_temp.*exp(-j*k*w0*t); 
    X(k+51) = trapz(t,x_temp);
    
end
