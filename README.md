# ASM-Challenge

The Iron Dragons are attending the ASM-GT hackathon at Georgia Tech. This time, the Iron Dragons are represented by David Freiberg, Christine Palmer, and me, Axel-Jose Muñoz.

The hackathon is branded as a community event where we can make contacts in industry and academia. I hope they don’t mind being crushed in the hackathon and still giving me a job.

The ASM-GT challenge is based on data science. So they’ll give us a bunch of data that seems worthless to humans, but using (a lot of) math and programming, we can extrapolate data and trends that can predict future situations.

(04/08/16 10:15) We arrived to the Pettit Microtechnology Building after two hours of looking for parking and the actual building. We were the first people to arrive to the challenge even though we drove just under 900 miles to get here.

(04/08/16 10:15) The problem was described via a presentation. It’s unlke other hackathons I’ve been to (namely one, MRS). The problem is that we have to find out what heat treatment was used on our sample of Al 6061, based on similar data on other heat treatments. We are given SEM, Optical, EBSD, and TEM data for temperature ranges 400, 650, 750 degrees. We can “buy” data on the sample for virtual money or even ask “consultants” (graduate students at Georgia Tech) for help on data science.

 

Plan of attack: Since I don’t have adequate materials science background (especially in the acronyms), I’ll be tackling the data science aspect. In the end we’re trying to create a multi-dimensional regression scheme (linear or using maybe spline functions),  using TEM, EBSD, etc. as parameters for the axis.

I’ll be using plot digitizers to analyze the plots for the free samples and try to extract the data. From there we can build a plot, fit a scheme to it, and look at the least-squares to see if it’s anything worth pursuing. Christine will be looking at the materials aspect to see all the variables and parameters that might be useful. David will be using ImageJ to analyze the optical and microscopes images to find emergent properties.

