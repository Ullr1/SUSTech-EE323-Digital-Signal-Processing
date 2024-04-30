function output = filter_2(input,n)
l = length(n);
output = zeros(1,l);
sum = 0;
for i = 1:l
    sum = input(i)+0.5*sum;
    output(i) = sum;
end