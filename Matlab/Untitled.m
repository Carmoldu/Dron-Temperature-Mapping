


data= importdata('GPSLOG05.TXT');


x = data(:,1);
y = data(:,2);
v = data(:,3);

M=100;
N=100;

[xq,yq] = meshgrid(min(x):((max(x)-min(x))/N):max(x), min(y):((max(y)-min(y))/M):max(y));
vq = griddata(x,y,v,xq,yq);

figure
mesh(xq,yq,vq);
hold on
plot3(x,y,v,'o');

h = gca;
h.XLim = [-2.7 2.7];
h.YLim = [-2.7 2.7];