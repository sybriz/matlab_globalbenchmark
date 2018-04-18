clear variables; clear global; close all; clc;
global n;
global B;
n = 15000;
iter = 100;
time = zeros(iter,1);
for i=1:iter
    tic
    globalGetA();
    globalGetB();
    B;
    time(i) = toc;
    fprintf('%i. -> %.3f s\n',i,time(i));
end
fprintf(['Result: %.3f ',char(177),' %.3f s\n'],sum(time)/iter,std(time));
% Result: 1.942 ± 0.173 s