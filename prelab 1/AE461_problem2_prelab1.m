% AE 461 prelab 1  question 2

%plot material data and make a graph of composite density vs void content
%for .35.45.55.65


vf = [.35];%.45;.55;.65];

vv = 0:.01:(1-vf)

vm = 1 - vf - vv;

density = 1.84*vf + 1.15*vm;

plot(vv*100,density)
hold on
title('Steve Macenski AE 461')
xlabel('Vv %*100')
ylabel('density g/cm^3')

legend('.65','.55','.45','.35')