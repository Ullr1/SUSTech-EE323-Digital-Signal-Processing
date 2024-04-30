function output = FIRfilter(x)
    [X,w] = DTFT(x,0);
    [Xmax,Imax] = max(abs(X));
    theata = w(Imax);
    h = [1, -2*cos(theata), 1];
    output = conv(x,h);
end