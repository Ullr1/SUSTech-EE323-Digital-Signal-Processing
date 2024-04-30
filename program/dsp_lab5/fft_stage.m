function X = fft_stage(x)
    N = length(x);
    X = zeros(1,N);
    x0 = x(1:2:N);
    x1 = x(2:2:N); 
    if N == 2
        X0 = x0;
        X1 = x1;
    else
        X0 = fft_stage(x0);
        X1 = fft_stage(x1);
    end
    for i=1:N/2
        X(i) = X0(i)+exp(-1j*2*pi*(i-1)/N)*X1(i);
        X(i+N/2) = X0(i)-exp(-1j*2*pi*(i-1)/N)*X1(i);
    end
end