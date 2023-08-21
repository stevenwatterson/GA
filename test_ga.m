N=16;

myfun = @(x) (x(1)-100)^2 + (x(2)-200)^2;

IP = rand(N,2);

myoutputfun = @(options,state,flag) disp(state.Generation);

ga_options = gaoptimset('Generations', 80, 'PopulationSize', 16, 'InitialPopulation', IP, 'OutputFcns', myoutputfun, 'UseParallel', 'always', 'Vectorized', 'off');

A=[];
b=[];
Aeq=[];
beq=[];
LB=[5 5];
UB=[200 400];
nonlcon=[];
fitnessfcn=myfun;
nvars=2;

[x, fval, exitflag, output, population, scores] = ga (fitnessfcn, nvars, A, b, Aeq, beq, LB, UB, nonlcon, ga_options)
