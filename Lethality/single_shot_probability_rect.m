%% Single Shot Probability (Rectangle)
% Returns the probability that a single shot fired at a target will hit
% that target within a given range and deflection.
%
% *Author:* Jean Knapp
%
% *Date:* 2022-09-06

%% Inputs
% 
% * *x:*    The target length in the deflection axis.
% * *y:*    The target length in the range axis.
% * *dep:*  The deflection error probable, which is the distance in the
%           deflection axis which contains 50% of all shots.
% * *rep:*  The range error probable, which is the distacne in the range
%           axis which contains 50% of all shots
% 

%% Outputs
%
% * *y:*    the single shot probability, evaluated at the values in x and
%           y, returned as a scalar value or an array of scalar values.
%

%% Implementation

function y = single_shot_probability_rect(x, y, dep, rep)

    y = erf(0.6745 * x / (2*sqrt(2)*dep)) * erf(0.6745 * y / (2*sqrt(2)*rep));

end