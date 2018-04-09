clc
clear all
close all 
freshfigure=1;%  set this option 1 for fresh figure & 2 to plot fresh figure on previous plot

if freshfigure==1
    clear all
    close all
    plotcolor=['-b^';'-g*';'-ro';'-cx';'-ks';'-yd';'-mp';'-wh'];
    freshfigure=1;
    legname=[];
    marksize=10;
    linewidth=1;
    index=1;
    legname=[];
elseif freshfigure~=1
    clearvars -except legname marksize linewidth index ber1 ebn name plotcolor
    hold on
    freshfigure=1;
    marksize=marksize+2;
    linewidth=linewidth+1;
    index=index+1
end

m=linspace(1300,1700,5);%kg
v=linspace(100000,150000,5);%m/sec
% v=linspace(100000,120000,10)
y=linspace(-5,5,5);%mm
dy=1000;%m/sec constant velocity of 1mm/sec
ddy=1;%constant velocity so accelration is zero
rl=linspace(.5,.6,5);%m
% rr=linspace(.50,.60,5);%m
rr=.5
ro=.10;%m
si=1;%1degree
dsi=1;% as si is constant
wa=1500;%kg
dell=45;%45degree
delr=45;%45degree
fi=linspace(.2,1,5);%5egree
dfi=1;% as si is constant
f11=1.1;
f12=1.1;
f22=1.1;
f33=1.1;
lname=[];
figure
hold on
grid on
for j=1:numel(m)
     m1=m(1,min(j,numel(m)));
    for i=1:numel(v)
        v1=v(1,i)
        ddy1=ddy(1,min(i,numel(ddy)));
        dy1=dy(1,min(i,numel(dy)));
        rl1=rl(1,min(i,numel(rl)));
        rr1=rr(1,min(i,numel(rr)));
        ro1=ro(1,min(i,numel(ro)));
        fi1=fi(1,min(i,numel(fi)));
    %     fsy(1,i)=calculatefsy(m(1,i),ddy(1,1),dy(1,1),v(1,1),rl(1,1),rr(1,1),ro(1,1),si(1,1),dsi(1,1),wa(1,1),dell(1,1),delr(1,1),fi(1,1),dfi(1,1),f11(1,1),f12(1,1),f22(1,1),f33(1,1));
        fsy(1,i)=calculatefsy(m1,ddy1,dy1,v1,rl1,rr1,ro1,si,dsi,wa,dell,delr,fi1,dfi,f11,f12,f22,f33)
    end
fsy
semilogy(v,fsy,plotcolor(j,:))
lname{j}=['fsy at m=' num2str(m1) 'kmps'];
end
title('variation in fsy for different v and m')
xlabel('v')
ylabel('Fsy')
legend(lname)
saveas(gcf,'result_fsy_1.jpg','jpg')
