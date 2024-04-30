function output = integrator(input,n)
l = length(n);
output = zeros(1,l);
sum = 0;
for i = 1:l
    sum = input(i)+sum;
    output(i) = sum;
end