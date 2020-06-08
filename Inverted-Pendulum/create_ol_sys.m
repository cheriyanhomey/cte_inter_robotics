%% create_ol_sys
%   Creates open loop system for inverted pendulum

%   m: Pendulum Mass
%   M: Cart Mass
%   l: Pendulum Length
%   g: Gravity
%   F: Noise Magnitude
% Outputs
%   A: A matrix of Open Loop System
%   B: B matrix of Open Loop System
%   C: C matrix of Open Loop System
%   D: D matrix of Open Loop System
%   F1: magnitude of plant noice
%   F2: magnitude of plat noice

function [A, B, C, D, F1, F2] = create_ol_sys(m, M, l, g)
    % Plant
    A = [0 0 1 0; 0 -m*g/M 0 0; 0 0 0 1; 0 g*(M+m)/(m*l) 0 0];
    B = [0; 1/M; 0; -1/(M*l)];
    % Measurement
    C = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
    D = [0; 0; 0; 0];
end
