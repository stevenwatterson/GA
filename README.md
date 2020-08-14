# GA
An implementation of the Genetic Algorithm for GNU Octave that supports parallelisation and bounds.  
---
This is a fork of the GNU Octave GA package for genetic algorithms, found at https://octave.sourceforge.io/ga/

The offical version has been unmaintained for several years.  Here is a version of the package with an expanded feature set that we developed for a project.  This package does not perfectly mimic the corresponding MATLAB package, but it does several of the   

Added features include:-
- supoort for parallelization, taking advantage of multicore/multithreaded architecture. 
- the support of upper and lower bounds on the variables to be optimised.
- support of the 'OutputFcns' feature that enables a user defined function to be applied to the population at each generation. 

Dependencies
- The parallelization requires both the parallel (https://octave.sourceforge.io/parallel/) and the Optimization (https://octave.sourceforge.io/optim/) packages.  
