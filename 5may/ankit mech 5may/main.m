clc
clear all
close all 
m=linspace(1300,1700,10);%kg
v=100000;%m/sec
% v=linspace(100000,120000,10)
dy=100000;%m/sec constant velocity of 100km/sec
ddy=0;%constant velocity so accelration is zero
rl=.50;%m
rr=linspace(.50,.60,10);%m
ro=.10;%m
si=1;%1degree
dsi=0;% as si is constant
wa=1500;%kg
dell=45;%45degree
delr=45;%45degree
fi=5;%5egree
dfi=0;% as si is constant
f11=1.1;
f12=1.1;
f22=1.1;
f33=1.1;
for i=1:numel(m)
    fsy(1,i)=calculatefsy(m(1,min(i,numel(m))),ddy(1,min(i,numel(ddy))),dy(1,min(i,numel(dy))),v(1,min(i,numel(v))),rl(1,min(i,numel(rl))),rr(1,min(i,numel(rr))),ro(1,min(i,numel(ro))),si(1,min(i,numel(si))),dsi(1,min(i,numel(dsi))),wa(1,min(i,numel(wa))),dell(1,min(i,numel(dell))),delr(1,min(i,numel(delr))),fi(1,min(i,numel(fi))),dfi(1,min(i,numel(dfi))),f11(1,min(i,numel(f11))),f12(1,min(i,numel(f12))),f22(1,min(i,numel(f22))),f33(1,min(i,numel(f33))));
end
fsy
semilogy(fsy)