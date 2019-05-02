%SSR Matrices
A = [0 1 0; 0 -11.53 0; 1.61 0 -1];
B = [0; 8189.66; 0];
C = [0 0 1];

%SSR
SSR = ss(A,B,C,0);

%Observability check
rankObservability = rank(obsv(SSR));
if(rankObservability>=3)
    fprintf('System is observable because rank of observability matrix is %d \n', rankObservability);
end

%Controllability check
rankContrabilitiy = rank(ctrb(SSR));
if(rankContrabilitiy>=3)
    fprintf('System is controllable because rank of controllability matrix is %d \n', rankContrabilitiy);
end

%Transfer Function
transferFunction= tf(SSR);
display(transferFunction);
