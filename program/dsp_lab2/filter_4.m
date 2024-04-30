function output = filter_4(input,n)
l = length(n);
output = zeros(1,l);
sum = 0;
for i = 1:l
    sum = 0.2*input(i)+0.8*sum;
    output(i) = sum;
end