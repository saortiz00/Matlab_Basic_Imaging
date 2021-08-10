%define serial port
s = serialport('COM8', 115200); %serial(port, baudrate);
%array to store data points
x = 100; %180 per 2 degree step for 360 degrees around
y = 100;    %100mm steps for vertical axis
data = zeros(y,x); %array of size z*phi
for i=1:x
   for j = 1:y
       data(j,i) = read(s, 1, "double"); %read(file pointer, how many values, data type)
       %plots in y by x instead cause heatmap flips them
   end
end

%Create image in heatmap form
h = heatmap(data, 'Colormap', jet(256));
grid off;
h.title("Imaging Serial Data");
h.XLabel = 'X';
h.YLabel = 'Y';

%fills in missing points with gray
h.MissingDataColor = [0.8 0.8 0.8];
h.MissingDataLabel = 'No Data';