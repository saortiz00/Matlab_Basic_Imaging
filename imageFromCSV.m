data = readmatrix('sensorRead.csv');

%Create image in heatmap form

h = heatmap(data, 'Colormap', jet(256));
grid off;
h.title("Image from CSV");
h.XLabel = 'X';
h.YLabel = 'Y';

%fills in missing points with gray
h.MissingDataColor = [0.8 0.8 0.8];
h.MissingDataLabel = 'No Data';