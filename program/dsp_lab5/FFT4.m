function X = FFT4(x)
N = length(x);
X = zeros(1,N);
x0 = x(1:2:N);
x1 = x(2:2:N);  
X0 = FFT2(x0);
X1 = FFT2(x1);
for i=1:N/2
    X(i) = X0(i)+exp(-1j*2*pi*(i-1)/N)*X1(i);
    X(i+N/2) = X0(i)-exp(-1j*2*pi*(i-1)/N)*X1(i);
end
end