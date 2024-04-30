function output = filter_5(input,n)
l = length(n);
output = zeros(1,l);
sum = 0;
for i = 1:l
    if i<4
        sum = 1/3*(input(i))+sum;
    else
        sum = 1/3*(input(i)-input(i-3))+sum;
    end
    output(i) = sum;    
end