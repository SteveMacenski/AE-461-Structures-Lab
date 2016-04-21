
M = 12;
t = .025;
w = 1.5;
Iyy = .0703;

a = [-5/2; -3/2; -1/2; 1/2; 3/2; 5/2];
b = [.625; .375; .125; -.125; -.375; -.625];

for i = 1:length(a);
    sigma(i) = -M*b(i)/Iyy;
end

plot(a, sigma)
title('steve macenski')
xlabel('m')
ylabel('sigma')

polyfit(a, sigma',1)
