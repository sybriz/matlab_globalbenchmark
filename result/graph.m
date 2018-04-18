clear variables; clear global; close all; clc;
t = load('time.mat');
tg = load('time_global.mat');

h = figure();
hold on;
plot(t.time,'Color','magenta');
plot(tg.time,'Color','green');
legend({['Übergeben: 1.940 ' char(177) ' 0.196 s'], ['Globals: 1.942 ' char(177) ' 0.173 s']});
title('Laufzeitvergleich bei verschiedenen Variablen-Übergabemethoden');
xlabel('Skript-Iterationen');
ylabel('Laufzeit [s]');