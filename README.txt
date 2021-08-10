Imaging With MATLAB 2020A
========================================================
Date: 6/20/21
Contributor: Sean Ortiz

Requires: MATLAB r2020A

========================================================
Description: This file contains 3 methods for imaging using MATLAB which may 
be beneficial for mapping sets of data or creating images from a live datastream.The intention was to improve an image with 900 data points to one with
36000 data points for overall quality and accuracy, as well as develop a method for wireless data transmission over wifi after successful use of the serial port method.
The 'imagingFromServer' file was tested with
NodeMCU 0.9/ESP-12, the 'imageFromCSV' used a CSV created with Microsoft Excel 2018, and the 'imagingExample' file was developed with Arduino in mind for real time data
acquisition. 
NOTE: the data used in the sensorRead.csv is a spreadsheet of random
data values to verify that the imaging works regardless of the variance between the values supplied.

=======================================================
How to use this software after unzipping:
- Download and install MATLAB r2020a or r2020b. At the time of writing MATLAB r2021a supports the syntax used in this program.
- Open MATLAB after installation.
- Open any of the above mentioned '.m' files using: File-> Open -> Matlab_Basic_Imaging
- Click 'Run' at the top

=======================================================

Reach me at: https://github.com/saortiz00