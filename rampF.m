%***********************************************
% Lab 1: Continuous-time Systems
% Author: Duru Yesilyurt
% Date: 9/30/2026
% Purpose: Script to generate and plot ramp response
% Inputs: t, m, Ts, ad
% Outputs: ramp response
% Reference: Signals and Systems with Matlab, Chaparro Luis F.
% Version: 1.0
%***********************************************

clear all;
clf;

Ts = 0.01;           
t = -5:Ts:5;        

% ramp function with slope m=3, delay/advance ad=0
y = ramp(t, 3, 0);

% plotting
plot(t, y);
axis([-5 5 -1 16]);
title('Ramp Response');
xlabel('time (seconds)');
ylabel('y(t)');
grid;

% function to generate ramp
function y = ramp(t,m,ad)

N= length(t); % counts how many points it should check
y = zeros(1,N); 
    for i = 1:N
        if t(i)>= -ad % checks the points, if on, calculate the ramp
        y(i) = m*(t(i) + ad);
        end
    end
end
