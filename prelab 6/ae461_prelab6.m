% % Steve Macenski 
% 
% % ae 461 problem 3 prelab 6

Theta = linspace(0,180,1000);
TEx = 181e9;
TEy = 10.3e9;
Tnuxy = 0.28;
TGxy = 7.17e9;
CT = 1/(1-Tnuxy^2*TEy/TEx);

Q11bar = CT*TEx;
Q22bar = CT*TEy; 
Q12bar = CT*Tnuxy*TEy;
Q66bar = TGxy;
m = cosd(Theta);
n = sind(Theta);
Q11 = m.^4*Q11bar + n.^4*Q22bar + 2*m.^2.*n.^2*Q12bar + 4*m.^2.*n.^2*Q66bar;
Q16 = m.^3.*n*Q11bar - m.*n.^3*Q22bar +(m.*n.^3 - m.^3.*n)*Q12bar+2*(m.*n.^3 - m.^3.*n)*Q66bar;
maxQ = max(Q11)/1e9

figure(1)
plot(Theta,Q11/1e9);%,Theta,1/2*maxQ*(Theta*0+1),Theta,1/3*maxQ*(Theta*0+1),Theta,0.9*maxQ*(Theta*0+1))
xlabel('Theta (Degrees)')
ylabel('Q_1_1 (GPa)')
grid on
title('Steve Macenski')
