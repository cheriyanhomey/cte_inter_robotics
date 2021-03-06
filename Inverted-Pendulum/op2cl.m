% op2cl
%   converts and open loop system and controller to a closed loop system
%   with unity feedback.
% Inputs
%   A: A matrix of Open Loop System
%   B: B matrix of Open Loop System
%   C: C matrix of Open Loop System
%   D: D matrix of Open Loop System
%   G: Control Matrix
% Outputs
%   clSys: Closed Loop System

function clSys = op2cl(A, B, C, D, G, F1, F2)
    Ac = A-B*G;
    % Add Noise
    clSys = sim_noise(Ac, B, C, D, G, F1, F2);
end
