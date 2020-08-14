# Genetic Algorithm for Octave
An implementation of the Genetic Algorithm for GNU Octave that supports parallelisation and bounds.  
---
This is a fork of the GNU Octave GA package for genetic algorithms, found at https://octave.sourceforge.io/ga/

The offical version has been unmaintained for several years.  Here is a version of the package with an expanded feature set that we developed for a project.  This package does not perfectly implment the corresponding MATLAB package, but it implements most of the key features. 

Added features include:-
- supoort for parallelization, taking advantage of multicore/multithreaded architecture. 
- the support of upper and lower bounds on the variables to be optimised.
- support of the 'OutputFcns' feature that enables a user defined function to be applied to the population at each generation. 

Dependencies
- The parallelization requires the parallel (https://octave.sourceforge.io/parallel/) package.  

Usage
 - See https://octave.sourceforge.io/ga/function/ga.html However, not all the features listed in the sourceforge package have been implemented.
 
**gaoptimset**

*Example*

options = gaoptimset('Generations', 80, 'PopulationSize', 16, 'InitialPopulation', IP, 'OutputFcns', myoutputfun, 'UseParallel', 'always', 'Vectorized', 'off');

*Parameter-Value pairs*

|Parameter|Value|Default|
|---------|:----:|-----:|
|'CreationFcn'|UserDefinedFuncton|@gacreationuniform|
|'CrossoverFcn'|UserDefinedFunction|@crossoverscattered|
|'CrossoverFraction'|Decimal|0.8|
|'EliteCount'|Integer|2|
|'FitnessLimit'|Double|-Inf|
|'FitnessScalingFcn'|UserDefinedFunction|@fitscalingrank|
|'Generations'|Integer|200|
|'InitialPopulation'|Array|[]|
|'InitialScores'|Array|[]|
|'MutationFcn'|{UserdefinedFunction, Scale, Shrink}|{@mutationgaussian, 1, 1}|
|'OutputFcns'|UserDefinedFunction|[]|
|'PopInitRange'|Array|[-10; 10]
|'PopulationSize'|Integer|20|
|'SelectionFcn'|UserDefinedFunction|@selectionstochunif|
|'TimeLimit'|Double|Inf|
|'UseParallel'|'always' or 'never'|'never'|
|'Vectorized'|'on' or 'off|'off'|


**ga**

[x, fval, exitflag, output, population, scores] = ga (fitnessfcn, nvars, A, b, Aeq, beq, LB, UB, nonlcon, options)

*Implemented*
- fitnessfcn has been implemented.
- nvars has been implemented.
- LB has been implemented.
- UB has been implemented.
- options have been implemented. 

*Not implemented*
- exitflag
- The inequality A\*x<=b.  
- The equality Aeq\*x=beq.
- The nonlinear constraints, *nonlcon*, have not been implemented.
