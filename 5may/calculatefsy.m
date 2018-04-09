function[fsy]=calculatefsy(m,ddy,dy,v,rl,rr,ro,si,dsi,wa,dell,delr,fi,dfi,f11,f12,f22,f33)
fsy=m*ddy+2*f11/v*(dy+(rl+rr)/2*dfi-v*si)+2*f33*(1-(rl+rr)/(2*ro))*si+2*f12*(dsi/v-(dell-delr)/(2*ro))+wa*((dell-delr)/2+fi);
end