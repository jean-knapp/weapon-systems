%% Mean Area of Effectiveness (Air Blast)
% Returns the Mean Area of Effectiveness given the effective range of
% a blast effect.
%
% *Author:* Jean Knapp
%
% *Date:* 2022-09-06

%% Inputs
% 
% * *range*   The effective range.
% 

%% Outputs
%
% * *mae:*    The mean area of effectiveness.
%

%% Implementation

function mae = mae_blast(range)

    mae = pi * range^2;

end