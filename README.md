# GA
An implementation of the Genetic Algorithm for GNU Octave that supports parallelisation and bounds.  
---
This is a fork of the GNU Octave GA package for genetic algorithms, found at https://octave.sourceforge.io/ga/

The offical version has been unmaintained for several years.  Here is a version of the package with an expanded feature set that we developed for a project.  This package does not perfectly implment the corresponding MATLAB package, but it implements most of the key features. 

Added features include:-
- supoort for parallelization, taking advantage of multicore/multithreaded architecture. 
- the support of upper and lower bounds on the variables to be optimised.
- support of the 'OutputFcns' feature that enables a user defined function to be applied to the population at each generation. 

Dependencies
- The parallelization requires both the parallel (https://octave.sourceforge.io/parallel/) and the Optimization (https://octave.sourceforge.io/optim/) packages.  

Usage
 - See https://octave.sourceforge.io/ga/function/ga.html However, not all the features listed in the sourceforge package have been implemented.
 
[x, fval, exitflag, output, population, scores] = ga (fitnessfcn, nvars, A, b, Aeq, beq, LB, UB, nonlcon, options)

- exitflag has not been implemented
- A, b.  The inequality A\*x<=b has not been implemented.  
- Aeq, beq.  The equality Aeq\*x=beq has not been implemented.
- nonlcon.  The nonlinear constraints have not been implemented.

- fitnessfcn has been implemented.
- nvars has been implemented.
- LB has been implemented.
- UB has been implemented.
- options have been implemented. 




