%% Scaled distance
% Returns the scaled distance.
%
% Valid for cylindric metal cases. Based on the Hutchinson equation.
%
% *Author:* Jean Knapp
%
% *Date:* 2022-09-06

%% Inputs
% 
% * *x*   The actual distance of detonation.
% * *w:*  The equivalent weight of TNT.
% 

%% Outputs
%
% * *y:*    The scaled distance.
%

%% Implementation

function y = scaled_distance(x,w)

    y = x / w^(1/3)

end