%*************************************************************
%       Script lines for Problem 3
% Script to generate and plot 3u(t-2) and 4r(t+3)
% Reference: ECE 09341 Signals and Systems Lab 1 Instructions
%*************************************************************
clear all;
clf;

Ts = 0.01;           
t = -5:Ts:5;   

figure(1);
y1 = 3*ustep(t,-2);
plot(t,y1); 
axis([-5 5 -1 5]);
title(' Unit-step response for 3u(t-2)');
xlabel('time (seconds)');
ylabel('y1(t)');
grid 

figure(2);
y = ramp(t,4,3);
plot(t,y); 
axis([-5 5 -1 35]);
title('4r(t+3)');
xlabel('time (seconds)');
ylabel('y2(t)');
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