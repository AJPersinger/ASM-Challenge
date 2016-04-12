dir = getDirectory("image"); 
name = getTitle; 
index = lastIndexOf(name, "."); 

run("FFT");
makeOval(0, 0, 2048, 2048);

run("Oval Profile", "number=360 analysis=[Radial Sums]");
//selectWindow("FFT of " + name);
//close();
//selectWindow(name);
//close();

if (index!=-1) name = substring(name, 0, index); 
name = name + ".csv"; 

saveAs("Results",dir+"FFT_Rotation_Chart_" + name)
