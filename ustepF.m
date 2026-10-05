%*************************************************************
% Lab1: Continuous-time Systems
% Problem 1: Script to generate and plot unit step response
% Inputs: time support and sampling steps of the signal
% Output: unit step response
% Reference: Signals and Systems with Matlab, Chaparro Luis F.
%**************************************************************

clear all;
clf
Ts = 0.01; % Sampling time
t = -5:Ts:5; % support of signal

% unit-step function with support [-5,5], delayed by 3
y = ustep(t,-3);
plot(t,y);
axis([-5 5 -1 5]);
title('Unit step response');
xlabel('time (seconds)');
ylabel('y(t)');
grid

%*************************************************************
% Function to generate unit step
% Input : time interval, signal advance/delay factor
% Output: Unit step response
%**************************************************************

function y = ustep(t,ad)
% generation of unit step
% t: time
% ad : advance (positive), delay (negative)
N= length(t);
y = zeros(1,N);
    for i = 1:N
        if t(i)>= -ad
        y(i) = 1;
        end
    end
end