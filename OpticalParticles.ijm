dir = getDirectory("image"); 
name = getTitle; 
index = lastIndexOf(name, "."); 
if (index!=-1) name = substring(name, 0, index); 
name = name + ".csv"; 

setAutoThreshold("Default");
setOption("BlackBackground", false);
run("Convert to Mask");

//saveAs(dir + "Thresholded_" + getTitle)

run("Set Measurements...", "area perimeter bounding fit area_fraction display redirect=None decimal=9");
run("Analyze Particles...", "size=1-Infinity pixel show=Nothing display exclude clear");
saveAs("Results", dir+name);
