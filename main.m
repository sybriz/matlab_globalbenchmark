clear variables; clear global; close all; clc;
n = 15000;
iter = 100;
time = zeros(iter,1);
for i=1:iter
    tic
    A = getA(n);
    B = getB(A);
    time(i) = toc;
    fprintf('%i. -> %.3f s\n',i,time(i));
end
fprintf(['Result: %.3f ',char(177),' %.3f s\n'],sum(time)/iter,std(time));
% Result: 1.940 ± 0.196 s