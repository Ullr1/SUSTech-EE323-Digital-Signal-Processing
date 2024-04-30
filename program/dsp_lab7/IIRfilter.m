function output = IIRfilter(x)
    theata=3146/4000*pi;
    r = 0.9999999;
    y = zeros(1,length(x));
    y(1) = (1-r)*x(1);
    y(2) = (1-r)*x(2)+2*r*cos(theata)*y(1);
    for i = 3:length(x)
        y(i) = (1-r)*x(i)+2*r*cos(theata)*y(i-1)-r^2*y(i-2);
    end
    output = y;
end