function [w]=equation(I)
E = 70.6*10^9; %Pa
density = 2700; %kg/m^3
L = .4572;
m = .6531;
w = .597^2*pi^2/L^2*sqrt(E*I/m);
end
