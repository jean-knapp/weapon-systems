%% Scaled distance
% Returns the actual distance given a scaled distance.
%
% *Author:* Jean Knapp
%
% *Date:* 2022-09-06

%% Inputs
% 
% * *y*   The scaled distance.
% * *w:*  The equivalent weight of TNT.
% 

%% Outputs
%
% * *x:*    The actual distance of detonation.
%

%% Implementation

function x = scaled_distance_inv(y,w)

    x = y * w^(1/3)

end