function X = DFTsum(x)
N = length(x);
n = 0:N-1;
X = zeros(1,N);
for k = 0:N-1
    X(k+1) = x*(exp(-1j*2*pi*k*n/N)).';
end
end