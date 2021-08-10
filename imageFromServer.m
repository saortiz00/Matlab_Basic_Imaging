url = 'http://192.168.1.1';
%array to store data points
x = 100; %x axis range
y = 100;    %y axis range of values
data = zeros(z,phi); %array of size x*y
for i=1:x
   for j = 1:y
       sensorData = str2double(webread(url));
       data(j,i) = sensorData;
       %NOTE: plots in y by x instead cause heatmap flips them
   end
end

%Create image in heatmap form
h = heatmap(data, 'Colormap', jet(256));
grid off;
h.title("Imaging From Server Data");
h.XLabel = 'X';
h.YLabel = 'Y';

%fills in missing points with gray
h.MissingDataColor = [0.8 0.8 0.8];
h.MissingDataLabel = 'No Data';