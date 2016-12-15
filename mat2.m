x_reconstr(1:length(t)) = 0; 

for index = 1:length(t);
for k = -N:N
x_reconstr(index) = x_reconstr(index) + (1/P)*X(k+N+1)*exp(j*k*w0*t(index));
end
end