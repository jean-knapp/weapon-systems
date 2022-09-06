%% Desired Damage Estimate
% Returns the probability that a number of shots fired at a target
% will hit a minimum number of times.
%
% *Author:* Jean Knapp
%
% *Date:* 2022-09-06

%% Inputs
% 
% * *ssp*   The single shot probability
% * *shots:*  The number of shots.
% * *hits:* The minimum number of hits.
% 

%% Outputs
%
% * *dde:*  The probabilitys that a minimum number of hits will happen.
%

%% Implementation

function dde = desired_damage_estimate(ssp,shots,hits)

        dde = 0;
        for i=hits:shots
            c = factorial(shots) / (factorial(i) * factorial(shots - i));
            dde = dde + c * ((ssp) ^ i) * (1-ssp) ^ (shots - i);
        end

end