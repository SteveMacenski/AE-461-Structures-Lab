%Steve Macenski Prelab 3

L = 32;
I = .3659;
P = [0 5 10 15 20 25];
w = [0 .011 .021 .033 .042];

for i=1:5
E(i) = P(i)*L^3/(3*w(i)*I);
end
E