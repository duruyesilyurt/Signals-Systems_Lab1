%************************************************************************
%       Script lines for Problem 4
% Script to generate and plot y(t) = 3r(t+3) - 6r(t+1) + 3r(t) - 3u(t-3)
% Reference: ECE 09341 Signals and Systems Lab 1 Instructions
%************************************************************************
clear all;
clf;

Ts = 0.01;           
t = -5:Ts:5;   

y = ramp(t,3,3) - ramp(t,6,1) + ramp(t,3,0) - 3*ustep(t,-3);
plot(t,y);
axis([-5 5 0 6]); % i calculated the ymin and ymax as 0 and 6
title('Signal y(t) - Problem 4');
xlabel('time (seconds)');
ylabel('y(t)');
grid 

% Unit step and Ramp Functions
function y = ustep(t, ad)
N = length(t);
y = zeros(1, N);
for i = 1:N
    if t(i) >= -ad
        y(i) = 1;
    end
end
end

function y = ramp(t, m, ad)
N = length(t);
y = zeros(1, N);
for i = 1:N
    if t(i) >= -ad
        y(i) = m * (t(i) + ad);
    end
end
end