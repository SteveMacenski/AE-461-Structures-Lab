% Steve Macenski 

% ae 461 problem 4 prelab 6

theta = 15;

m = cosd(theta);
n = sind(theta);

vxy = .26; 
Gxy = 4.14;
X = 1062;
Xprime = 610;
Y = 31;
Yprime = 118;
S = 72;

F1bar = 1/X - 1/Xprime;
F2bar = 1/Y - 1/Yprime;
F11bar = 1/(X*Xprime);
F22bar = 1/(Y*Yprime);
F12bar = -.5*sqrt(F11bar*F22bar);
F66bar = 1/S^2;


F1 = m^2*F1bar + n^2*F2bar
F11 = m^4*F11bar + n^4*F22bar + 2*m^2*n^2*F12bar + 4*m^2*n^2*F66bar

