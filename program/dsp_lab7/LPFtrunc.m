function [h,H] = LPFtrunc(N)
    h = zeros(1,N);
    for i = 0:N-1
        h(i+1) = 2/pi*sinc(2/pi*(i-(N-1)/2));
    end
    [H,w] = DTFT(h,512);
end