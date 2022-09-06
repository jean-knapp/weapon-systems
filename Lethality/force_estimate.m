%% Force Estimate (DDE)
% Returns the number sorties required to achieve the desired damage
% estimate.
%
% *Author:* Jean Knapp
%
% *Date:* 2022-09-06

%% Inputs
% 
% * *dde*   The desired damage estimate
% * *ps:*  The success probability of a single sortie.
% 

%% Outputs
%
% * *y:*    The number of sorties required.
%

%% Implementation

function y = force_estimate(dde, ps)

    y = ceil(log(1 - dde) / log(1 - ps));

end