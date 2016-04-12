README

Folders:
	Al 6061 - Original Images
		This folder contains the unmodified optical micrographs obtained for different heat treatment levels.
		Each heat treatment is represented by five magnification levels (5x, 10x, 20x, 50x, and 100x).
	Al 6061 - Filtered Images
		This folder contains the optical micrographs after ImageJ thresholding to become a binary image.
		The ImageJ macro used to create these from the originals is available as OpticalParticles.ijm.
	Al 6061 - Particle Informat
		This folder contains the CSV files listening the properties for every measured particle.
		Properties include particle area, x-y coordinates, ellipse fit paramaters, and particle orientation.
		The ImageJ macro used to record these properties is available as OpticalParticles.ijm.

ImageJ Macros:
	OpticalParticles.ijm
		This macro is used to apply a binary threshold to optical micrographs and record particle data into CSV files.
	OpticalFFT.ijm
		This macro is used to apply a Fast Fourier Transform to optical micrographs.
		The Fast Fourier Transform can be used to measure particle alignment, as developed by Ayres et al. [1].
		The alignment profiles are plotted using OvalProfile.java.
	OvalProfile.java
		This macro takes an image and creates a profile of the sum of the pixel values along each ray.
		This creates a graph of the components of the Fourier Transform along each degree of rotation.
			The peaks of the graph at 0 and 180 represent the vertical component of the average fiber alignment.
			The peaks at 90 and 270 represent the horizontal component of the average fiber alignment.
		This macro was created by Bill O'Connell, and is available as a public macro in the ImageJ macro repositories. [2]


Mathematica Code:
	Code Workflow:
		Imports the CSV data from the folder "Al 6061 - Particle Information" into the array opticalParticleTable.
		Creates a list of heat treatment temperature predictions for particles from 1 square pixel to 50 square pixels by:
			Taking the log of the number of particles of the aforementioned size in each image, and 
			Creating a linear interpolation from the log of the counts for 400 and 600 degrees F, and
			Fitting the log of the number of particles of the aforementioned size in the unknown sample into the linear interpolation, and
			Outputting the heat treatment temperature predicted by the interpolation.
		Plots the list.

Thermodynamics:
	Phase transition data and TTT plot taken from Ambriz et al. [3]
	Nucleation rate equations taken from MIT's OpenCourseWare online biochemistry lectures. [4]
		

Bibliography:
	[1] Ayres, Chantal E., B. Shekhar Jha, Hannah Meredith, James R. Bowman, Gary L. Bowlin, Scott C. Henderson, and David G. Simpson. "Measuring Fiber Alignment in Electrospun Scaffolds: A User's Guide to the 2D Fast Fourier Transform Approach." Journal of Biomaterials Science, Polymer Edition 19.5 (2008): 603-21.
		http://www.ncbi.nlm.nih.gov/pubmed/18419940
	[2] http://rsb.info.nih.gov/ij/plugins/oval-profile.html
	[3] Ambriz, Ricardo Rafael, and David Jaramillo. "Mechanical Behavior of Precipitation Hardened Aluminum Alloys Welds." Light Metal Alloys Applications (2014): n. pag. Web. http://cdn.intechopen.com/pdfs-wm/46826.pdf
	[4] "Review of Chemical Thermodynamics", Massachusetts Institute of Technology. Biochemistry. Fall 2001. http://ocw.mit.edu/courses/biology/7-51-graduate-biochemistry-fall-2001/lecture-notes/fa01lec06.pdf
