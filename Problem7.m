%************************************************************************
%       Script lines for Problem 7
% Script to generate and plot y(t) = 3r(t+3) - 6r(t+1) + 3r(t) - 3u(t-3)
% Reference: ECE 09341 Signals and Systems Lab 1 Instructions
%************************************************************************
clear all;
clf;
          
t = -10:0.01:10; 

x1 = cos(pi*t);
x2 = cos((2*pi/3)*t);
x = x1 + x2;

figure;
plot(t,x);
xlabel('t (seconds)');
ylabel('x(t)');
title('x(t) = cos(\pi t) + cos(2\pi t / 3)');
grid