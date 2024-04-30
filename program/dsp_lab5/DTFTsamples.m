function [X,w] = DTFTsamples(x)
X = DFTsum(x);
N = length(x);
k = 0:N-1;
w = 2*pi*k/N;
w(w>=pi) = w(w>=pi)-2*pi;
w = sort(w);
X = fftshift(X);
end