%% Desired Damage Estimate (DDE)
% Returns the number of shots that need to be fired at a target so that
% a minimum number of hits will happen.
%
% *Author:* Jean Knapp
%
% *Date:* 2022-09-06

%% Inputs
% 
% * *ssp*   The single shot probability
% * *dde:*  The desired damage estimate.
% * *hits:* The minimum number of hits.
% 

%% Outputs
%
% * *y:*    The number of shots that need to be fired at the target.
% * *de:*   The damage estimate
%

%% Implementation

function [y, de] = dde(ssp,dde,hits)

    if ~exist('hits','var')
        % default minimum number of hits to 1
        hits = 1;
    end
    
    de = 0; % damage estimate
    y = hits-1; % number of releases
    
    while (ssp > 0) && (de < dde)
        y = y + 1;
        de = 0;
    
        for i=hits:y
             c = factorial(y) / (factorial(i) * factorial(y - i));
            de = de + c * ((ssp) ^ i) * (1-ssp) ^ (y - i);
        end
    end

end