%************************************************************************
%       Script lines for Problem 5
% Script to generate and plot even and odd components
% Reference: ECE 09341 Signals and Systems Lab 1 Instructions
%************************************************************************

% given part for problem 5
clear all;
clf;
t = -5:0.01:5;

figure(1);
y1 = ramp(t,2,2.5);
y2 = ramp(t,-5,0);
y3 = ramp(t,3,-2);
y4 = ustep(t,-4);
y = y1 + y2 + y3 + y4;
plot(t,y);
axis([-10 10 -3 5]);
grid


% compute and plot the even and odd components
[ye, yo] = evenodd(y);
figure(2);
plot(t, ye, t, yo);
legend('Even component', 'Odd component');
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

% 5c even/odd decomposition
function [ye,yo] = evenodd(y)
yr = fliplr(y); % fliplr(y) = y(-t) 
ye = 0.5 * (y + yr);
yo = 0.5 * (y - yr);

end