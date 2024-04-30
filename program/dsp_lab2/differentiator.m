function output = differentiator(input,n)
l = length(n);
output = zeros(1,l+1);
output(1) = input(1);
for i = 1:l-1
    output(i+1) = input(i+1)-input(i);
end
output(l+1) = -input(l);