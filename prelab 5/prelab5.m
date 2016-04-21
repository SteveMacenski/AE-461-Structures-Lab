
lambda = [1.8751; 4.6941; 7.8546];
x = linspace(0,1,1000); 
L = 1;
for i = 1:length(lambda)
    w = sinh(lambda(i).*x/L)+ -(1/(cot(lambda(i)) + coth(lambda(i))))*cosh(lambda(i).*x/L) - sin(lambda(i).*x) + (1/(cot(lambda(i)) + coth(lambda(i))))*cos(lambda(i).*x)
    plot(x,w)
    hold on
end
title('Steve Macenski')
xlabel('x/L')
ylabel('w')


