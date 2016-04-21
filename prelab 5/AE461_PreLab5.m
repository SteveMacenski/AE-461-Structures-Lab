% % AE 461 PRelab 5
% %Alex Case on 4/3/2016
% clc
% clear all
% clf
% close all
% 
% %%
% %Problem 2
% 
% %beam dimensions
% L=.4572; %m
% b=0.0381; %m
% h=0.00635; %m
% I=b^3*h/12; %m^4
% A=b*h; %m^2
% 
% z=linspace(1E7,9e7,1000); % z=E/rho as in z is the ration of Young's modulous over the density of the material
% w1=(.597^2)*(pi/L)^2*sqrt(I/A)*sqrt(z);
% 
% AL_z=26148148.15;
% AL_w1=(.597^2)*(pi/L)^2*sqrt(I/A)*sqrt(AL_z);
% 
% Cu_z=14600674.92;
% Cu_w1=(.597^2)*(pi/L)^2*sqrt(I/A)*sqrt(Cu_z);
% 
% Ti_z=26475770.93;
% Ti_w1=(.597^2)*(pi/L)^2*sqrt(I/A)*sqrt(Ti_z);
% 
% AS5_z=86250000.00;
% AS5_w1=(.597^2)*(pi/L)^2*sqrt(I/A)*sqrt(AS5_z);
% 
% Kev_z=52054794.52;
% Kev_w1=(.597^2)*(pi/L)^2*sqrt(I/A)*sqrt(Kev_z);
% 
% plot(z,w1)
% hold on
% plot(AL_z,AL_w1,'o','LineWidth',10)
% hold on
% plot(Ti_z,Ti_w1,'o','LineWidth',10)
% hold on
% plot(Cu_z,Cu_w1,'o','LineWidth',10)
% hold on
% plot(Kev_z,Kev_w1,'o','LineWidth',10)
% hold on
% plot(AS5_z,AS5_w1,'o','LineWidth',10)
% legend('First w curve','AL','Ti','Cu','Kevlar','AS5/3501')
% ylabel('w (rad/s)')
% xlabel('E/rho ')
% title('Steve Macenski')


%% problem 3
clc;clear all;
I = linspace(0,.01,100)
E = 70.6*10^9; %Pa
density = 2700; %kg/m^3
L = .4572;
m = .6531;

w = .597^2*pi^2/L^2*sqrt(E*I/m)

Irect1 = .001953;
Irect1 = convlength(Irect1,'in','m');
Irect2 = .0703;
Irect2 = convlength(Irect2,'in','m');
Icircle = .01119;
Icircle = convlength(Icircle,'in','m');
Ic = .221;
Ic = convlength(Ic,'in','m');
Ii = .159;
Ii = convlength(Ii,'in','m');
plot(I,w,Irect1,equation(Irect1),'o',Irect2,equation(Irect2),'o',Icircle,equation(Icircle),'o',Ic,equation(Ic),'o',Ii,equation(Ii),'o')

xlabel('I m^4')
ylabel('w rad/s')
title('Steve Macenski');
legend('First w curve','wide rect','tall rect','circle','c section','I beam')






